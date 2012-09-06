.class public final Lcom/google/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 520
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 523
    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 538
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 539
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 540
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 541
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 542
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 543
    return-void
.end method

.method private constructor <init>([BII)V
    .registers 5
    .parameter "buffer"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 520
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 523
    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 530
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 531
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 532
    iput p2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 533
    neg-int v0, p2

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 535
    return-void
.end method

.method public static decodeZigZag32(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 480
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .registers 6
    .parameter "n"

    .prologue
    .line 494
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;
    .registers 2
    .parameter "input"

    .prologue
    .line 55
    new-instance v0, Lcom/google/protobuf/CodedInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/CodedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/google/protobuf/CodedInputStream;
    .registers 3
    .parameter "buf"

    .prologue
    .line 62
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/CodedInputStream;
    .registers 6
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 70
    new-instance v1, Lcom/google/protobuf/CodedInputStream;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/protobuf/CodedInputStream;-><init>([BII)V

    .line 77
    .local v1, result:Lcom/google/protobuf/CodedInputStream;
    :try_start_5
    invoke-virtual {v1, p2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I
    :try_end_8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_8} :catch_9

    .line 88
    return-object v1

    .line 78
    :catch_9
    move-exception v0

    .line 86
    .local v0, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    .prologue
    .line 626
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 627
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int v0, v1, v2

    .line 628
    .local v0, bufferEnd:I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_1f

    .line 630
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    .line 631
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 635
    :goto_1e
    return-void

    .line 633
    :cond_1f
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    goto :goto_1e
.end method

.method private refillBuffer(Z)Z
    .registers 7
    .parameter "mustSucceed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 685
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ge v1, v4, :cond_10

    .line 686
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    :cond_10
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-ne v1, v4, :cond_22

    .line 692
    if-eqz p1, :cond_20

    .line 693
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_20
    move v1, v3

    .line 722
    :goto_21
    return v1

    .line 699
    :cond_22
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 701
    iput v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 702
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v1, :cond_5b

    move v1, v2

    :goto_30
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 703
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ge v1, v2, :cond_64

    .line 704
    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_5b
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_30

    .line 708
    :cond_64
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v1, v2, :cond_73

    .line 709
    iput v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 710
    if-eqz p1, :cond_71

    .line 711
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_71
    move v1, v3

    .line 713
    goto :goto_21

    .line 716
    :cond_73
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 717
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int v0, v1, v2

    .line 719
    .local v0, totalBytesRead:I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    if-gt v0, v1, :cond_85

    if-gez v0, :cond_8a

    .line 720
    :cond_85
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 722
    :cond_8a
    const/4 v1, 0x1

    goto :goto_21
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    if-eq v0, p1, :cond_9

    .line 124
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 126
    :cond_9
    return-void
.end method

.method public getBytesUntilLimit()I
    .registers 4

    .prologue
    .line 652
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_9

    .line 653
    const/4 v1, -0x1

    .line 657
    :goto_8
    return v1

    .line 656
    :cond_9
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int v0, v1, v2

    .line 657
    .local v0, currentAbsolutePosition:I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    sub-int/2addr v1, v0

    goto :goto_8
.end method

.method public isAtEnd()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 666
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v1, v2, :cond_e

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public popLimit(I)V
    .registers 2
    .parameter "oldLimit"

    .prologue
    .line 643
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 644
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 645
    return-void
.end method

.method public pushLimit(I)I
    .registers 5
    .parameter "byteLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 610
    if-gez p1, :cond_7

    .line 611
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 613
    :cond_7
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 614
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 615
    .local v0, oldLimit:I
    if-le p1, v0, :cond_16

    .line 616
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 618
    :cond_16
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 620
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 622
    return v0
.end method

.method public readBool()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 284
    .local v1, size:I
    if-nez v1, :cond_9

    .line 285
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 294
    :goto_8
    return-object v0

    .line 286
    :cond_9
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_20

    if-lez v1, :cond_20

    .line 289
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 290
    .local v0, result:Lcom/google/protobuf/ByteString;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_8

    .line 294
    .end local v0           #result:Lcom/google/protobuf/ByteString;
    :cond_20
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_8
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 6
    .parameter "fieldNumber"
    .parameter "builder"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v0, v1, :cond_b

    .line 237
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 239
    :cond_b
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 240
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 241
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 243
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 244
    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .parameter "builder"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 270
    .local v0, length:I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v2, v3, :cond_f

    .line 271
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 273
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 274
    .local v1, oldLimit:I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 275
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 276
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 277
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 278
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 279
    return-void
.end method

.method public readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_a

    .line 734
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 736
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .registers 14
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 746
    if-gez p1, :cond_7

    .line 747
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 750
    :cond_7
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v9, v10

    add-int/2addr v9, p1

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v9, v10, :cond_21

    .line 752
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 754
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 757
    :cond_21
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v9, v10

    if-gt p1, v9, :cond_38

    .line 759
    new-array v0, p1, [B

    .line 760
    .local v0, bytes:[B
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v9, p1

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 842
    :cond_37
    :goto_37
    return-object v0

    .line 763
    .end local v0           #bytes:[B
    :cond_38
    const/16 v9, 0x1000

    if-ge p1, v9, :cond_7b

    .line 768
    new-array v0, p1, [B

    .line 769
    .restart local v0       #bytes:[B
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int v7, v9, v10

    .line 770
    .local v7, pos:I
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 776
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 778
    :goto_54
    sub-int v9, p1, v7

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v9, v10, :cond_6e

    .line 779
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    invoke-static {v9, v10, v0, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v7, v9

    .line 781
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 782
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_54

    .line 785
    :cond_6e
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    const/4 v10, 0x0

    sub-int v11, p1, v7

    invoke-static {v9, v10, v0, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    sub-int v9, p1, v7

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_37

    .line 800
    .end local v0           #bytes:[B
    .end local v7           #pos:I
    :cond_7b
    iget v5, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 801
    .local v5, originalBufferPos:I
    iget v6, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 804
    .local v6, originalBufferSize:I
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 805
    const/4 v9, 0x0

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 806
    const/4 v9, 0x0

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 809
    sub-int v9, v6, v5

    sub-int v8, p1, v9

    .line 810
    .local v8, sizeLeft:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v2, chunks:Ljava/util/List;,"Ljava/util/List<[B>;"
    :goto_95
    if-lez v8, :cond_c6

    .line 813
    const/16 v9, 0x1000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v1, v9, [B

    .line 814
    .local v1, chunk:[B
    const/4 v7, 0x0

    .line 815
    .restart local v7       #pos:I
    :goto_a0
    array-length v9, v1

    if-ge v7, v9, :cond_c0

    .line 816
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v9, :cond_b0

    const/4 v4, -0x1

    .line 818
    .local v4, n:I
    :goto_a8
    const/4 v9, -0x1

    if-ne v4, v9, :cond_b9

    .line 819
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 816
    .end local v4           #n:I
    :cond_b0
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    array-length v10, v1

    sub-int/2addr v10, v7

    invoke-virtual {v9, v1, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    goto :goto_a8

    .line 821
    .restart local v4       #n:I
    :cond_b9
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 822
    add-int/2addr v7, v4

    .line 823
    goto :goto_a0

    .line 824
    .end local v4           #n:I
    :cond_c0
    array-length v9, v1

    sub-int/2addr v8, v9

    .line 825
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 829
    .end local v1           #chunk:[B
    .end local v7           #pos:I
    :cond_c6
    new-array v0, p1, [B

    .line 832
    .restart local v0       #bytes:[B
    sub-int v7, v6, v5

    .line 833
    .restart local v7       #pos:I
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    const/4 v10, 0x0

    invoke-static {v9, v5, v0, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_d4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 837
    .restart local v1       #chunk:[B
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v0, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    array-length v9, v1

    add-int/2addr v7, v9

    goto :goto_d4
.end method

.method public readRawLittleEndian32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 440
    .local v0, b1:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    .line 441
    .local v1, b2:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 442
    .local v2, b3:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    .line 443
    .local v3, b4:B
    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method public readRawLittleEndian64()J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v13, 0xff

    .line 451
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 452
    .local v0, b1:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    .line 453
    .local v1, b2:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 454
    .local v2, b3:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    .line 455
    .local v3, b4:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v4

    .line 456
    .local v4, b5:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v5

    .line 457
    .local v5, b6:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v6

    .line 458
    .local v6, b7:B
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v7

    .line 459
    .local v7, b8:B
    int-to-long v8, v0

    and-long/2addr v8, v13

    int-to-long v10, v1

    and-long/2addr v10, v13

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v2

    and-long/2addr v10, v13

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v3

    and-long/2addr v10, v13

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v4

    and-long/2addr v10, v13

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v5

    and-long/2addr v10, v13

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v6

    and-long/2addr v10, v13

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v7

    and-long/2addr v10, v13

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    .line 339
    .local v2, tmp:B
    if-ltz v2, :cond_8

    move v1, v2

    .line 368
    :cond_7
    :goto_7
    return v1

    .line 342
    :cond_8
    and-int/lit8 v1, v2, 0x7f

    .line 343
    .local v1, result:I
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_14

    .line 344
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    goto :goto_7

    .line 346
    :cond_14
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 347
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_23

    .line 348
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_7

    .line 350
    :cond_23
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 351
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_32

    .line 352
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_7

    .line 354
    :cond_32
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 355
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 356
    if-gez v2, :cond_7

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_41
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4d

    .line 359
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    if-gez v3, :cond_7

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 363
    :cond_4d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public readRawVarint64()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v3, 0x0

    .line 425
    .local v3, shift:I
    const-wide/16 v1, 0x0

    .line 426
    .local v1, result:J
    :goto_3
    const/16 v4, 0x40

    if-ge v3, v4, :cond_18

    .line 427
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 428
    .local v0, b:B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v3

    or-long/2addr v1, v4

    .line 429
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_15

    .line 430
    return-wide v1

    .line 432
    :cond_15
    add-int/lit8 v3, v3, 0x7

    .line 433
    goto :goto_3

    .line 434
    .end local v0           #b:B
    :cond_18
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 219
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1e

    if-lez v1, :cond_1e

    .line 222
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 223
    .local v0, result:Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 227
    .end local v0           #result:Ljava/lang/String;
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1d
.end method

.method public readTag()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 100
    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    .line 110
    :goto_9
    return v0

    .line 104
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    .line 105
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-nez v0, :cond_1d

    .line 108
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 110
    :cond_1d
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    goto :goto_9
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public skipField(I)Z
    .registers 5
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 157
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 137
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    .line 155
    :goto_10
    return v0

    .line 140
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    goto :goto_10

    .line 143
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    goto :goto_10

    .line 146
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->skipMessage()V

    .line 147
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    goto :goto_10

    .line 152
    :pswitch_2d
    const/4 v0, 0x0

    goto :goto_10

    .line 154
    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    goto :goto_10

    .line 135
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public skipMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 168
    .local v0, tag:I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :cond_c
    return-void
.end method

.method public skipRawBytes(I)V
    .registers 6
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 853
    if-gez p1, :cond_8

    .line 854
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 857
    :cond_8
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v1, v2, :cond_22

    .line 859
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 861
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 864
    :cond_22
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2f

    .line 866
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 884
    :goto_2e
    return-void

    .line 869
    :cond_2f
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int v0, v1, v2

    .line 870
    .local v0, pos:I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 875
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 876
    :goto_3c
    sub-int v1, p1, v0

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v1, v2, :cond_4d

    .line 877
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    .line 878
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 879
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_3c

    .line 882
    :cond_4d
    sub-int v1, p1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_2e
.end method
