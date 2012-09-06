.class public Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .registers 15
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 102
    .local v3, height:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    .line 103
    .local v12, width:I
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 106
    .local v7, minDimension:I
    const/4 v1, 0x0

    .line 107
    .local v1, borderWidth:I
    :goto_d
    if-ge v1, v7, :cond_18

    invoke-virtual {p0, v1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-nez v13, :cond_18

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 110
    :cond_18
    if-ne v1, v7, :cond_1f

    .line 111
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 115
    :cond_1f
    move v8, v1

    .line 116
    .local v8, moduleEnd:I
    :goto_20
    if-ge v8, v7, :cond_2b

    invoke-virtual {p0, v8, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    .line 119
    :cond_2b
    if-ne v8, v7, :cond_32

    .line 120
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 123
    :cond_32
    sub-int v9, v8, v1

    .line 126
    .local v9, moduleSize:I
    add-int/lit8 v10, v12, -0x1

    .line 127
    .local v10, rowEndOfSymbol:I
    :goto_36
    if-ltz v10, :cond_41

    invoke-virtual {p0, v10, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-nez v13, :cond_41

    .line 128
    add-int/lit8 v10, v10, -0x1

    goto :goto_36

    .line 130
    :cond_41
    if-gez v10, :cond_48

    .line 131
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 133
    :cond_48
    add-int/lit8 v10, v10, 0x1

    .line 136
    sub-int v13, v10, v1

    rem-int/2addr v13, v9

    if-eqz v13, :cond_54

    .line 137
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 139
    :cond_54
    sub-int v13, v10, v1

    div-int v2, v13, v9

    .line 144
    .local v2, dimension:I
    shr-int/lit8 v13, v9, 0x1

    add-int/2addr v1, v13

    .line 146
    add-int/lit8 v13, v2, -0x1

    mul-int/2addr v13, v9

    add-int v11, v1, v13

    .line 147
    .local v11, sampleDimension:I
    if-ge v11, v12, :cond_64

    if-lt v11, v3, :cond_69

    .line 148
    :cond_64
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 152
    :cond_69
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 153
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6f
    if-ge v4, v2, :cond_8a

    .line 154
    mul-int v13, v4, v9

    add-int v5, v1, v13

    .line 155
    .local v5, iOffset:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_76
    if-ge v6, v2, :cond_87

    .line 156
    mul-int v13, v6, v9

    add-int/2addr v13, v1

    invoke-virtual {p0, v13, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_84

    .line 157
    invoke-virtual {v0, v6, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 155
    :cond_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 153
    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 161
    .end local v5           #iOffset:I
    .end local v6           #j:I
    :cond_8a
    return-object v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .registers 11
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p2, :cond_4c

    sget-object v5, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 69
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/qrcode/QRCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 70
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    iget-object v5, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v5, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 71
    .local v1, decoderResult:Lcom/google/zxing/common/DecoderResult;
    sget-object v3, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 78
    .end local v0           #bits:Lcom/google/zxing/common/BitMatrix;
    .local v3, points:[Lcom/google/zxing/ResultPoint;
    :goto_1a
    new-instance v4, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v6

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 79
    .local v4, result:Lcom/google/zxing/Result;
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_38

    .line 80
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 82
    :cond_38
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 83
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 85
    :cond_4b
    return-object v4

    .line 73
    .end local v1           #decoderResult:Lcom/google/zxing/common/DecoderResult;
    .end local v3           #points:[Lcom/google/zxing/ResultPoint;
    .end local v4           #result:Lcom/google/zxing/Result;
    :cond_4c
    new-instance v5, Lcom/google/zxing/qrcode/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v5, p2}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    .line 74
    .local v2, detectorResult:Lcom/google/zxing/common/DetectorResult;
    iget-object v5, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 75
    .restart local v1       #decoderResult:Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .restart local v3       #points:[Lcom/google/zxing/ResultPoint;
    goto :goto_1a
.end method

.method protected getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-object v0
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method
