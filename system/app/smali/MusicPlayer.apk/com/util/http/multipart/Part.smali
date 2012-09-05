.class public abstract Lcom/util/http/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY_BYTES:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/util/http/multipart/Part;

    invoke-static {v0}, Lcom/util/http/apache/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    .line 72
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/Part;->BOUNDARY_BYTES:[B

    .line 78
    sget-object v0, Lcom/util/http/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lcom/util/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 84
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/Part;->CRLF_BYTES:[B

    .line 90
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/Part;->QUOTE_BYTES:[B

    .line 96
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/Part;->EXTRA_BYTES:[B

    .line 102
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 109
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 115
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/Part;->CHARSET_BYTES:[B

    .line 121
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/util/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLengthOfParts([Lcom/util/http/multipart/Part;[B)J
    .registers 9
    .parameter "parts"
    .parameter "partBoundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    sget-object v5, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "getLengthOfParts(Parts[])"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 425
    if-nez p0, :cond_11

    .line 426
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parts may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 428
    :cond_11
    const-wide/16 v3, 0x0

    .line 429
    .local v3, total:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v5, p0

    if-ge v0, v5, :cond_2f

    .line 431
    aget-object v5, p0, v0

    invoke-virtual {v5, p1}, Lcom/util/http/multipart/Part;->setPartBoundary([B)V

    .line 432
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/util/http/multipart/Part;->length()J

    move-result-wide v1

    .line 433
    .local v1, l:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_2b

    .line 434
    const-wide/16 v5, -0x1

    .line 442
    .end local v1           #l:J
    :goto_2a
    return-wide v5

    .line 436
    .restart local v1       #l:J
    :cond_2b
    add-long/2addr v3, v1

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 438
    .end local v1           #l:J
    :cond_2f
    sget-object v5, Lcom/util/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 439
    array-length v5, p1

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 440
    sget-object v5, Lcom/util/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 441
    sget-object v5, Lcom/util/http/multipart/Part;->CRLF_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v5, v3

    .line 442
    goto :goto_2a
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/util/http/multipart/Part;[B)V
    .registers 6
    .parameter "out"
    .parameter "parts"
    .parameter "partBoundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    if-nez p1, :cond_a

    .line 387
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parts may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_a
    if-eqz p2, :cond_f

    array-length v1, p2

    if-nez v1, :cond_17

    .line 390
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "partBoundary may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    array-length v1, p1

    if-ge v0, v1, :cond_28

    .line 394
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcom/util/http/multipart/Part;->setPartBoundary([B)V

    .line 395
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/util/http/multipart/Part;->send(Ljava/io/OutputStream;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 397
    :cond_28
    sget-object v1, Lcom/util/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 398
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 399
    sget-object v1, Lcom/util/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 400
    sget-object v1, Lcom/util/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 401
    return-void
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/util/http/multipart/Part;->boundaryBytes:[B

    if-nez v0, :cond_7

    .line 180
    sget-object v0, Lcom/util/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 182
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/util/http/multipart/Part;->boundaryBytes:[B

    goto :goto_6
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    sget-object v1, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter length()"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p0}, Lcom/util/http/multipart/Part;->lengthOfData()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_14

    .line 340
    const-wide/16 v1, -0x1

    .line 349
    :goto_13
    return-wide v1

    .line 342
    :cond_14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 343
    .local v0, overhead:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/util/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 344
    invoke-virtual {p0, v0}, Lcom/util/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/util/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/util/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/util/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/util/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 349
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lcom/util/http/multipart/Part;->lengthOfData()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_13
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    sget-object v0, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter send(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0, p1}, Lcom/util/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/util/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/util/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 324
    invoke-virtual {p0, p1}, Lcom/util/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/util/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 326
    invoke-virtual {p0, p1}, Lcom/util/http/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/util/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 328
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    sget-object v2, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter sendContentTypeHeader(OutputStream out)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p0}, Lcom/util/http/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, contentType:Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 246
    sget-object v2, Lcom/util/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 247
    sget-object v2, Lcom/util/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 248
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 249
    invoke-virtual {p0}, Lcom/util/http/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, charSet:Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 251
    sget-object v2, Lcom/util/http/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 252
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 255
    .end local v0           #charSet:Ljava/lang/String;
    :cond_30
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    sget-object v0, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 230
    sget-object v0, Lcom/util/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 231
    sget-object v0, Lcom/util/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 232
    invoke-virtual {p0}, Lcom/util/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 233
    sget-object v0, Lcom/util/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 234
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEnd(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 309
    sget-object v0, Lcom/util/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 310
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    sget-object v0, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEndOfHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 281
    sget-object v0, Lcom/util/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 282
    sget-object v0, Lcom/util/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 283
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendStart(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 217
    sget-object v0, Lcom/util/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 218
    invoke-virtual {p0}, Lcom/util/http/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 219
    sget-object v0, Lcom/util/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 220
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    sget-object v1, Lcom/util/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter sendTransferEncodingHeader(OutputStream out)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p0}, Lcom/util/http/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, transferEncoding:Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 267
    sget-object v1, Lcom/util/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 268
    sget-object v1, Lcom/util/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 269
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 271
    :cond_1e
    return-void
.end method

.method setPartBoundary([B)V
    .registers 2
    .parameter "boundaryBytes"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/util/http/multipart/Part;->boundaryBytes:[B

    .line 196
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/util/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
