.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;
.source "DecoderResult.java"


# instance fields
.field private final byteSegments:Ljava/util/Vector;

.field private final ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private final rawBytes:[B

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/Vector;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .registers 6
    .parameter "rawBytes"
    .parameter "text"
    .parameter "byteSegments"
    .parameter "ecLevel"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 41
    :cond_d
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    .line 42
    iput-object p2, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/Vector;

    .line 44
    iput-object p4, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 45
    return-void
.end method


# virtual methods
.method public getByteSegments()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/Vector;

    return-object v0
.end method

.method public getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public getRawBytes()[B
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    return-object v0
.end method
