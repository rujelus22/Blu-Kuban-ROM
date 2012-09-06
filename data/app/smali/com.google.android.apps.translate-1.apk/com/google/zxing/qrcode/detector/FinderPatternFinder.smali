.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .parameter "image"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 49
    return-void
.end method

.method public static native nativeFind(II[IZ[F)Z
.end method


# virtual methods
.method fastFind(Ljava/util/Hashtable;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .registers 14
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    .line 52
    if-eqz p1, :cond_2b

    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const/4 v6, 0x1

    .line 53
    .local v6, tryHarder:Z
    :goto_c
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 54
    .local v3, maxI:I
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    .line 55
    .local v4, maxJ:I
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v0, v7, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 57
    .local v0, bits:[I
    const/16 v7, 0xc

    new-array v1, v7, [F

    .line 59
    .local v1, centers:[F
    invoke-static {v4, v3, v0, v6, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->nativeFind(II[IZ[F)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 60
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 52
    .end local v0           #bits:[I
    .end local v1           #centers:[F
    .end local v3           #maxI:I
    .end local v4           #maxJ:I
    .end local v6           #tryHarder:Z
    :cond_2b
    const/4 v6, 0x0

    goto :goto_c

    .line 63
    .restart local v0       #bits:[I
    .restart local v1       #centers:[F
    .restart local v3       #maxI:I
    .restart local v4       #maxJ:I
    .restart local v6       #tryHarder:Z
    :cond_2d
    new-array v5, v11, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 64
    .local v5, patternInfo:[Lcom/google/zxing/qrcode/detector/FinderPattern;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_30
    if-ge v2, v11, :cond_4c

    .line 65
    new-instance v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    shl-int/lit8 v8, v2, 0x2

    aget v8, v1, v8

    shl-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    shl-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x2

    aget v10, v1, v10

    invoke-direct {v7, v8, v9, v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    aput-object v7, v5, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 69
    :cond_4c
    invoke-static {v5}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 71
    new-instance v7, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v7, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v7
.end method
