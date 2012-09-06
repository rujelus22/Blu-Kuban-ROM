.class public Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;
.super Ljava/lang/Object;
.source "BarcodeRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$1;,
        Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;,
        Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;,
        Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;,
        Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;,
        Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;
    }
.end annotation


# static fields
.field private static final CONFIDENCE_LEVEL:I = 0x2

.field static final MAX_BARCODE_FRAME_HEIGHT:I = 0x1e0

.field static final MAX_BARCODE_FRAME_WIDTH:I = 0x320

.field private static final MIN_BARCODE_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_BARCODE_FRAME_WIDTH:I = 0xf0

.field private static final ONE_AND_TWO_D_READER:Lcom/google/zxing/MultiFormatReader; = null

.field private static final ONE_D_FORMATS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONE_D_READER:Lcom/google/zxing/MultiFormatReader; = null

.field private static final PRUNING_THRESHOLD:I = 0x2

.field private static final TWO_D_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final TWO_D_READER:Lcom/google/zxing/MultiFormatReader;

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final barcodeMode:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

.field private volatile globalBuffers:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;

.field private final observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

.field private final recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/BarcodeFormat;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->ONE_D_FORMATS:Ljava/util/List;

    .line 58
    new-array v0, v4, [Lcom/google/zxing/BarcodeFormat;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->TWO_D_FORMATS:Ljava/util/List;

    .line 78
    invoke-static {}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->createOneAndTwoDimenFormats()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->newMultiFormatReader(Ljava/util/List;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->ONE_AND_TWO_D_READER:Lcom/google/zxing/MultiFormatReader;

    .line 82
    sget-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->ONE_D_FORMATS:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->newMultiFormatReader(Ljava/util/List;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->ONE_D_READER:Lcom/google/zxing/MultiFormatReader;

    .line 84
    sget-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->TWO_D_FORMATS:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->newMultiFormatReader(Ljava/util/List;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->TWO_D_READER:Lcom/google/zxing/MultiFormatReader;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;)V
    .registers 5
    .parameter "barcodeMode"
    .parameter "observer"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;-><init>(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$1;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    .line 116
    iput-object p1, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->barcodeMode:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    .line 117
    iput-object p2, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    .line 118
    return-void
.end method

.method private static acceptableBarcode(Lcom/google/zxing/Result;)Z
    .registers 4
    .parameter "barcodeResult"

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 458
    .local v0, format:Lcom/google/zxing/BarcodeFormat;
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v1, :cond_14

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v1, :cond_14

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v1, :cond_14

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-ne v0, v1, :cond_1d

    :cond_14
    invoke-static {p0}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->getNumConsistentLines(Lcom/google/zxing/Result;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1d

    .line 461
    const/4 v1, 0x0

    .line 464
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method private static createOneAndTwoDimenFormats()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->ONE_D_FORMATS:Ljava/util/List;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->TWO_D_FORMATS:Ljava/util/List;

    if-nez v1, :cond_10

    .line 122
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected both one- and two-dimensional formats to be set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->ONE_D_FORMATS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    .local v0, formats:Ljava/util/List;,"Ljava/util/List<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->TWO_D_FORMATS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    return-object v0
.end method

.method private static decodeHelper(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 4
    .parameter "reader"
    .parameter "bitmap"

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 428
    .local v0, rawResult:Lcom/google/zxing/Result;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_4} :catch_12

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 436
    :goto_8
    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->acceptableBarcode(Lcom/google/zxing/Result;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 437
    const/4 v0, 0x0

    .line 440
    .end local v0           #rawResult:Lcom/google/zxing/Result;
    :cond_11
    return-object v0

    .line 429
    .restart local v0       #rawResult:Lcom/google/zxing/Result;
    :catch_12
    move-exception v1

    .line 433
    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_8

    :catchall_17
    move-exception v1

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v1
.end method

.method private static getBarcodeScanningRect(II)Landroid/graphics/Rect;
    .registers 9
    .parameter "totalWidth"
    .parameter "totalHeight"

    .prologue
    .line 161
    const/16 v4, 0x320

    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 162
    .local v3, width:I
    const/16 v4, 0x1e0

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 164
    .local v0, height:I
    sub-int v4, p0, v3

    div-int/lit8 v1, v4, 0x2

    .line 165
    .local v1, leftOffset:I
    sub-int v4, p1, v0

    div-int/lit8 v2, v4, 0x2

    .line 167
    .local v2, topOffset:I
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private static getNumConsistentLines(Lcom/google/zxing/Result;)I
    .registers 4
    .parameter "barcodeResult"

    .prologue
    .line 446
    const/4 v1, 0x2

    .line 448
    .local v1, numLines:I
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Hashtable;

    move-result-object v0

    .line 449
    .local v0, metadata:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1b

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 451
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 453
    :cond_1b
    return v1
.end method

.method static maybeTranslate(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 13
    .parameter "originalRect"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    const/16 v9, 0x320

    const/16 v8, 0x1e0

    .line 247
    sget-object v3, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Possibly translating %s; imageWidth=%d, imageHeight=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    if-gt p1, v9, :cond_24

    if-gt p2, v8, :cond_24

    .line 263
    .end local p0
    :goto_23
    return-object p0

    .line 253
    .restart local p0
    :cond_24
    const/4 v1, 0x0

    .line 254
    .local v1, xAxisTranslation:I
    const/4 v2, 0x0

    .line 255
    .local v2, yAxisTranslation:I
    if-le p1, v9, :cond_2c

    .line 256
    add-int/lit16 v3, p1, -0x320

    div-int/lit8 v1, v3, 0x2

    .line 258
    :cond_2c
    if-le p2, v8, :cond_32

    .line 259
    add-int/lit16 v3, p2, -0x1e0

    div-int/lit8 v2, v3, 0x2

    .line 261
    :cond_32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 262
    .local v0, offsetRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object p0, v0

    .line 263
    goto :goto_23
.end method

.method private static newMultiFormatReader(Ljava/util/List;)Lcom/google/zxing/MultiFormatReader;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;)",
            "Lcom/google/zxing/MultiFormatReader;"
        }
    .end annotation

    .prologue
    .local p0, formats:Ljava/util/List;,"Ljava/util/List<Lcom/google/zxing/BarcodeFormat;>;"
    const/4 v4, 0x2

    .line 132
    if-nez p0, :cond_b

    .line 133
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "\'formats\' was null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_b
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v4}, Ljava/util/Hashtable;-><init>(I)V

    .line 138
    .local v0, hints:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, p0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CONFIDENCE_LEVEL:Lcom/google/zxing/DecodeHintType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 146
    .local v1, multiFormatReader:Lcom/google/zxing/MultiFormatReader;
    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 148
    return-object v1
.end method

.method static resultPointsToRect([Lcom/google/zxing/ResultPoint;ZII)Landroid/graphics/Rect;
    .registers 13
    .parameter "points"
    .parameter "transform"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    const/4 v8, 0x0

    .line 184
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_d

    .line 185
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must have at least one point"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 186
    :cond_d
    array-length v5, p0

    const/4 v6, 0x4

    if-le v5, v6, :cond_1a

    .line 191
    sget-object v5, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "More than 4 points in the ResultPoint array"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_1a
    aget-object v5, p0, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 195
    .local v2, left:I
    aget-object v5, p0, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 196
    .local v4, top:I
    aget-object v5, p0, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 197
    .local v3, right:I
    aget-object v5, p0, v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v0, v5

    .line 199
    .local v0, bottom:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_37
    array-length v5, p0

    if-ge v1, v5, :cond_87

    .line 200
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_61

    .line 201
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 206
    :cond_4c
    :goto_4c
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    int-to-float v6, v4

    cmpg-float v5, v5, v6

    if-gez v5, :cond_74

    .line 207
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 199
    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 202
    :cond_61
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    int-to-float v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4c

    .line 203
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    float-to-int v3, v5

    goto :goto_4c

    .line 208
    :cond_74
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    int-to-float v6, v0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5e

    .line 209
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v0, v5

    goto :goto_5e

    .line 212
    :cond_87
    if-eqz p1, :cond_93

    .line 214
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v5, p2}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->rotate(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 217
    :goto_92
    return-object v5

    :cond_93
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_92
.end method

.method static resultToBarcode(Lcom/google/zxing/Result;ZII)Lcom/google/android/apps/unveil/barcode/Barcode;
    .registers 11
    .parameter "result"
    .parameter "rotated"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 298
    if-nez p0, :cond_4

    .line 299
    const/4 v3, 0x0

    .line 306
    :goto_3
    return-object v3

    .line 301
    :cond_4
    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    .line 302
    .local v1, parsedResult:Lcom/google/zxing/client/result/ParsedResult;
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 304
    .local v2, points:[Lcom/google/zxing/ResultPoint;
    invoke-static {v2, p1, p2, p3}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->resultPointsToRect([Lcom/google/zxing/ResultPoint;ZII)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3, p2, p3}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->maybeTranslate(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 306
    .local v0, boundingBox:Landroid/graphics/Rect;
    new-instance v3, Lcom/google/android/apps/unveil/barcode/Barcode;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/google/android/apps/unveil/barcode/Barcode;-><init>(Lcom/google/zxing/client/result/ParsedResultType;Lcom/google/zxing/BarcodeFormat;Ljava/lang/String;Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method static rotate(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .registers 8
    .parameter "originalRect"
    .parameter "imageWidth"

    .prologue
    .line 224
    const/16 v1, 0x320

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 225
    .local v0, barcodePlaneWidth:I
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    iget v5, p0, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public createBuffers(II)V
    .registers 12
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 274
    invoke-static {p1, p2}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->getBarcodeScanningRect(II)Landroid/graphics/Rect;

    move-result-object v8

    .line 278
    .local v8, rect:Landroid/graphics/Rect;
    :try_start_4
    new-instance v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;-><init>(IIIIII)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_17} :catch_1a

    .line 285
    .local v0, buffers:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;
    :goto_17
    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->globalBuffers:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;

    .line 286
    return-void

    .line 280
    .end local v0           #buffers:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;
    :catch_1a
    move-exception v7

    .line 281
    .local v7, e:Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 282
    .restart local v0       #buffers:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;
    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Couldn\'t create buffers; disabling barcode recognition."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public multiStageRecognize(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Lcom/google/android/apps/unveil/barcode/Barcode;
    .registers 21
    .parameter "frame"

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->globalBuffers:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;

    .line 327
    .local v14, buffers:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;
    if-nez v14, :cond_12

    .line 328
    sget-object v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "No buffers for barcode recognition have been allocated."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    const/4 v6, 0x0

    .line 416
    :goto_11
    return-object v6

    .line 332
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getWidth()I

    move-result v3

    .line 333
    .local v3, width:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getHeight()I

    move-result v4

    .line 334
    .local v4, height:I
    iget v6, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->dataWidth:I

    if-ne v6, v3, :cond_22

    iget v6, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->dataHeight:I

    if-eq v6, v4, :cond_2e

    .line 335
    :cond_22
    sget-object v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "The full preview frame size does not match the full frame in our buffers."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    const/4 v6, 0x0

    goto :goto_11

    .line 340
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v2

    .line 341
    .local v2, data:[B
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v15

    .line 342
    .local v15, frameNum:I
    sget-object v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$1;->$SwitchMap$com$google$android$apps$unveil$barcode$BarcodeRecognizer$Stage:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    iget-object v7, v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->stage:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1a0

    .line 420
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Invalid switch case reached."

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 347
    :pswitch_4f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LOAD:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-interface {v6, v7, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onStartStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->startLoadTimestamp:J

    .line 352
    new-instance v1, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;

    iget v5, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->left:I

    iget v6, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->top:I

    iget v7, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->width:I

    iget v8, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->height:I

    iget-object v9, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->croppedCopySpace:[B

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;-><init>([BIIIIII[B)V

    .line 356
    .local v1, regularSource:Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;
    new-instance v17, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;

    iget-object v6, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->bitMatrixBits:[I

    iget-object v7, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->blackPoints:[B

    move-object/from16 v0, v17

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;[I[B)V

    .line 358
    .local v17, regularBinarizer:Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    .line 360
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    new-instance v7, Lcom/google/zxing/BinaryBitmap;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    iput-object v7, v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->regularBitmap:Lcom/google/zxing/BinaryBitmap;

    .line 363
    new-instance v5, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;

    iget v9, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->top:I

    iget v6, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->left:I

    sub-int v6, v3, v6

    iget v7, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->width:I

    sub-int v10, v6, v7

    iget v11, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->height:I

    iget v12, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->width:I

    iget-object v13, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->croppedCopySpace:[B

    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-direct/range {v5 .. v13}, Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;-><init>([BIIIIII[B)V

    .line 367
    .local v5, rotatedSource:Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;
    new-instance v18, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;

    iget-object v6, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->bitMatrixBits:[I

    iget-object v7, v14, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Buffers;->blackPoints:[B

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v6, v7}, Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;[I[B)V

    .line 370
    .local v18, rotatedBinarizer:Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    new-instance v7, Lcom/google/zxing/BinaryBitmap;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    iput-object v7, v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->rotatedBitmap:Lcom/google/zxing/BinaryBitmap;

    .line 372
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LANDSCAPE_AND_QR:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    iput-object v7, v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->stage:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    .line 374
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LOAD:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-interface {v6, v7, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onEndStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->barcodeMode:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;->MUTLISTAGE:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    if-ne v6, v7, :cond_d8

    .line 377
    const/4 v6, 0x0

    goto/16 :goto_11

    .line 382
    .end local v1           #regularSource:Lcom/google/android/apps/unveil/barcode/PlanarYUVLuminanceSource;
    .end local v5           #rotatedSource:Lcom/google/android/apps/unveil/barcode/RotatedPlanarYUVLuminanceSource;
    .end local v17           #regularBinarizer:Lcom/google/android/apps/unveil/barcode/UnveilHybridBinarizer;
    .end local v18           #rotatedBinarizer:Lcom/google/android/apps/unveil/barcode/RotatedUnveilHybridBinarizer;
    :cond_d8
    :pswitch_d8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LANDSCAPE_AND_QR:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-interface {v6, v7, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onStartStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V

    .line 383
    sget-object v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->ONE_AND_TWO_D_READER:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    iget-object v7, v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->regularBitmap:Lcom/google/zxing/BinaryBitmap;

    invoke-static {v6, v7}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->decodeHelper(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v16

    .line 385
    .local v16, rawResult:Lcom/google/zxing/Result;
    if-eqz v16, :cond_11b

    .line 386
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LOAD:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    iput-object v7, v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->stage:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    .line 387
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LANDSCAPE_AND_QR:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-interface {v6, v7, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onEndStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    iget-wide v9, v9, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->startLoadTimestamp:J

    sub-long/2addr v7, v9

    invoke-interface {v6, v7, v8, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onDoneAnalyzing(JI)V

    .line 390
    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v6, v3, v4}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->resultToBarcode(Lcom/google/zxing/Result;ZII)Lcom/google/android/apps/unveil/barcode/Barcode;

    move-result-object v6

    goto/16 :goto_11

    .line 393
    :cond_11b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->PORTRAIT:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    iput-object v7, v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->stage:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    .line 394
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LANDSCAPE_AND_QR:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-interface {v6, v7, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onEndStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->barcodeMode:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;->MUTLISTAGE:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    if-ne v6, v7, :cond_137

    .line 397
    const/4 v6, 0x0

    goto/16 :goto_11

    .line 402
    .end local v16           #rawResult:Lcom/google/zxing/Result;
    :cond_137
    :pswitch_137
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->PORTRAIT:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-interface {v6, v7, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onStartStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V

    .line 403
    sget-object v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->ONE_D_READER:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    iget-object v7, v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->rotatedBitmap:Lcom/google/zxing/BinaryBitmap;

    invoke-static {v6, v7}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->decodeHelper(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v16

    .line 404
    .restart local v16       #rawResult:Lcom/google/zxing/Result;
    if-eqz v16, :cond_17a

    .line 405
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LOAD:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    iput-object v7, v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->stage:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    .line 406
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->PORTRAIT:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-interface {v6, v7, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onEndStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V

    .line 407
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    iget-wide v9, v9, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->startLoadTimestamp:J

    sub-long/2addr v7, v9

    invoke-interface {v6, v7, v8, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onDoneAnalyzing(JI)V

    .line 409
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v6, v3, v4}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->resultToBarcode(Lcom/google/zxing/Result;ZII)Lcom/google/android/apps/unveil/barcode/Barcode;

    move-result-object v6

    goto/16 :goto_11

    .line 412
    :cond_17a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LOAD:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    iput-object v7, v6, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->stage:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    .line 413
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->recognizerContext:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;

    iget-wide v9, v9, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$MultiStageRecognizerContext;->startLoadTimestamp:J

    sub-long/2addr v7, v9

    invoke-interface {v6, v7, v8, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onDoneAnalyzing(JI)V

    .line 415
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;->observer:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;

    sget-object v7, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->PORTRAIT:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-interface {v6, v7, v15}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;->onEndStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V

    .line 416
    const/4 v6, 0x0

    goto/16 :goto_11

    .line 342
    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_d8
        :pswitch_137
    .end packed-switch
.end method
