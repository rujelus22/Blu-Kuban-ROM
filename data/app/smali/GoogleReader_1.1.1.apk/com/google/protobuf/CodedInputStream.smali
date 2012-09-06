.class public final Lcom/google/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


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
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/google/protobuf/CodedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/CodedInputStream;-><init>([BII)V

    .line 77
    :try_start_5
    invoke-virtual {v0, p2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I
    :try_end_8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_8} :catch_9

    .line 88
    return-object v0

    .line 78
    :catch_9
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readRawVarint32(ILjava/io/InputStream;)I
    .registers 7
    .parameter "firstByte"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 393
    and-int/lit16 v3, p0, 0x80

    if-nez v3, :cond_7

    move v3, p0

    .line 416
    :goto_6
    return v3

    .line 397
    :cond_7
    and-int/lit8 v2, p0, 0x7f

    .line 398
    .local v2, result:I
    const/4 v1, 0x7

    .line 399
    .local v1, offset:I
    :goto_a
    const/16 v3, 0x20

    if-ge v1, v3, :cond_28

    .line 400
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 401
    .local v0, b:I
    if-ne v0, v4, :cond_19

    .line 402
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 404
    :cond_19
    and-int/lit8 v3, v0, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 405
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_23

    move v3, v2

    .line 406
    goto :goto_6

    .line 399
    :cond_23
    add-int/lit8 v1, v1, 0x7

    goto :goto_a

    .line 410
    :cond_26
    add-int/lit8 v1, v1, 0x7

    .end local v0           #b:I
    :cond_28
    const/16 v3, 0x40

    if-ge v1, v3, :cond_3d

    .line 411
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 412
    .restart local v0       #b:I
    if-ne v0, v4, :cond_37

    .line 413
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 415
    :cond_37
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_26

    move v3, v2

    .line 416
    goto :goto_6

    .line 419
    .end local v0           #b:I
    :cond_3d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 380
    .local v0, firstByte:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 381
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 383
    :cond_c
    invoke-static {v0, p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1

    return v1
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
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 685
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ge v1, v2, :cond_10

    .line 686
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    :cond_10
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-ne v1, v2, :cond_22

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

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 701
    iput v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 702
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v1, :cond_5b

    move v1, v4

    :goto_30
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 703
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ge v1, v4, :cond_64

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

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_30

    .line 708
    :cond_64
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v1, v4, :cond_73

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

.method public getTotalBytesRead()I
    .registers 3

    .prologue
    .line 674
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 666
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_f

    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    move v0, v2

    goto :goto_e
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
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 294
    :goto_8
    return-object v2

    .line 286
    :cond_9
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_21

    if-lez v1, :cond_21

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

    move-object v2, v0

    .line 291
    goto :goto_8

    .line 294
    .end local v0           #result:Lcom/google/protobuf/ByteString;
    :cond_21
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

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
    .parameter
    .parameter
    .parameter
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

    const/4 v1, 0x1

    sub-int/2addr v0, v1

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
    .registers 6
    .parameter
    .parameter
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
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v1, v2, :cond_f

    .line 271
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 273
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 274
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 275
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 277
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 278
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

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
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1000

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 746
    if-gez p1, :cond_c

    .line 747
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 750
    :cond_c
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_26

    .line 752
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 754
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 757
    :cond_26
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_3c

    .line 759
    new-array v0, p1, [B

    .line 760
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v1, v2, v0, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 842
    :goto_3b
    return-object v0

    .line 763
    :cond_3c
    if-ge p1, v10, :cond_77

    .line 768
    new-array v0, p1, [B

    .line 769
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    .line 770
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    invoke-static {v2, v3, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 776
    invoke-direct {p0, v4}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 778
    :goto_53
    sub-int v2, p1, v1

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v2, v3, :cond_6b

    .line 779
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    invoke-static {v2, v8, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v1, v2

    .line 781
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 782
    invoke-direct {p0, v4}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_53

    .line 785
    :cond_6b
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    sub-int v3, p1, v1

    invoke-static {v2, v8, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    sub-int v1, p1, v1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_3b

    .line 800
    :cond_77
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 801
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 804
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 805
    iput v8, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 806
    iput v8, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 809
    sub-int v2, v1, v0

    sub-int v2, p1, v2

    .line 810
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 812
    :goto_8f
    if-lez v2, :cond_bd

    .line 813
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [B

    move v5, v8

    .line 815
    :goto_98
    array-length v6, v4

    if-ge v5, v6, :cond_b7

    .line 816
    iget-object v6, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v6, :cond_a7

    move v6, v9

    .line 818
    :goto_a0
    if-ne v6, v9, :cond_b0

    .line 819
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 816
    :cond_a7
    iget-object v6, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    array-length v7, v4

    sub-int/2addr v7, v5

    invoke-virtual {v6, v4, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    goto :goto_a0

    .line 821
    :cond_b0
    iget v7, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 822
    add-int/2addr v5, v6

    .line 823
    goto :goto_98

    .line 824
    :cond_b7
    array-length v5, v4

    sub-int/2addr v2, v5

    .line 825
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 829
    :cond_bd
    new-array v2, p1, [B

    .line 832
    sub-int/2addr v1, v0

    .line 833
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v4, v0, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 837
    array-length v3, p0

    invoke-static {p0, v8, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    array-length v3, p0

    add-int/2addr v1, v3

    goto :goto_c9

    :cond_dc
    move-object v0, v2

    .line 842
    goto/16 :goto_3b
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

    move v3, v2

    .line 368
    :goto_7
    return v3

    .line 342
    :cond_8
    and-int/lit8 v1, v2, 0x7f

    .line 343
    .local v1, result:I
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_15

    .line 344
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    :cond_13
    :goto_13
    move v3, v1

    .line 368
    goto :goto_7

    .line 346
    :cond_15
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 347
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_24

    .line 348
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_13

    .line 350
    :cond_24
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 351
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_33

    .line 352
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_13

    .line 354
    :cond_33
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 355
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 356
    if-gez v2, :cond_13

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_42
    const/4 v3, 0x5

    if-ge v0, v3, :cond_50

    .line 359
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v3

    if-ltz v3, :cond_4d

    move v3, v1

    .line 360
    goto :goto_7

    .line 358
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 363
    :cond_50
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

    if-gt v1, v2, :cond_1f

    if-lez v1, :cond_1f

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

    move-object v2, v0

    .line 227
    .end local v0           #result:Ljava/lang/String;
    :goto_1e
    return-object v2

    :cond_1f
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytes(I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1e
.end method

.method public readTag()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    move v0, v1

    .line 110
    :goto_a
    return v0

    .line 104
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    .line 105
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-nez v0, :cond_1e

    .line 108
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 110
    :cond_1e
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    goto :goto_a
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

.method public readUnknownGroup(ILcom/google/protobuf/MessageLite$Builder;)V
    .registers 4
    .parameter "fieldNumber"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 263
    return-void
.end method

.method public resetSizeCounter()V
    .registers 2

    .prologue
    .line 592
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 593
    return-void
.end method

.method public setRecursionLimit(I)I
    .registers 6
    .parameter "limit"

    .prologue
    .line 553
    if-gez p1, :cond_1b

    .line 554
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recursion limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_1b
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 558
    .local v0, oldLimit:I
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 559
    return v0
.end method

.method public setSizeLimit(I)I
    .registers 6
    .parameter "limit"

    .prologue
    .line 579
    if-gez p1, :cond_1b

    .line 580
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_1b
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 584
    .local v0, oldLimit:I
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 585
    return v0
.end method

.method public skipField(I)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 157
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 137
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move v0, v2

    .line 155
    :goto_11
    return v0

    .line 140
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move v0, v2

    .line 141
    goto :goto_11

    .line 143
    :pswitch_17
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    move v0, v2

    .line 144
    goto :goto_11

    .line 146
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->skipMessage()V

    .line 147
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    move v0, v2

    .line 150
    goto :goto_11

    .line 152
    :pswitch_31
    const/4 v0, 0x0

    goto :goto_11

    .line 154
    :pswitch_33
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move v0, v2

    .line 155
    goto :goto_11

    .line 135
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_20
        :pswitch_31
        :pswitch_33
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
    .parameter
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

    move-result-object v0

    throw v0

    .line 857
    :cond_8
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_22

    .line 859
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 861
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 864
    :cond_22
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2f

    .line 866
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 884
    :goto_2e
    return-void

    .line 869
    :cond_2f
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    .line 870
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 875
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    .line 876
    :goto_3b
    sub-int v1, p1, v0

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v1, v2, :cond_4c

    .line 877
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    .line 878
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 879
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(Z)Z

    goto :goto_3b

    .line 882
    :cond_4c
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_2e
.end method
