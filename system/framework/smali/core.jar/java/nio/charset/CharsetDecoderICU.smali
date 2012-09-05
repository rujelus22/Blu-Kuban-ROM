.class final Ljava/nio/charset/CharsetDecoderICU;
.super Ljava/nio/charset/CharsetDecoder;
.source "CharsetDecoderICU.java"


# static fields
.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_BYTES:I = 0x2

.field private static final MAX_CHARS_PER_BYTE:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[B

.field private allocatedOutput:[C

.field private converterHandle:J

.field private data:[I

.field private ec:I

.field private inEnd:I

.field private input:[B

.field private outEnd:I

.field private output:[C


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;FJ)V
    .registers 8
    .parameter "cs"
    .parameter "averageCharsPerByte"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 70
    const/high16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    .line 39
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 40
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 42
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 43
    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 71
    iput-wide p3, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    .line 72
    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .registers 6
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    .line 190
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 202
    :goto_21
    return v1

    .line 192
    :cond_22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    .line 193
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    if-eqz v2, :cond_33

    iget v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    array-length v3, v3

    if-le v2, v3, :cond_39

    .line 194
    :cond_33
    iget v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 197
    :cond_39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 198
    .local v0, pos:I
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    iput-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    goto :goto_21
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .registers 4
    .parameter "out"

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 172
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 173
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    .line 174
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :goto_20
    return v0

    .line 176
    :cond_21
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    .line 177
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    if-eqz v0, :cond_32

    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    array-length v1, v1

    if-le v0, v1, :cond_38

    .line 178
    :cond_32
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 181
    :cond_38
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 182
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetDecoderICU;
    .registers 9
    .parameter "cs"
    .parameter "icuCanonicalName"

    .prologue
    const-wide/16 v5, 0x0

    .line 54
    const-wide/16 v0, 0x0

    .line 56
    .local v0, address:J
    :try_start_4
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v0

    .line 57
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->getAveCharsPerByte(J)F

    move-result v2

    .line 58
    .local v2, averageCharsPerByte:F
    new-instance v3, Ljava/nio/charset/CharsetDecoderICU;

    invoke-direct {v3, p0, v2, v0, v1}, Ljava/nio/charset/CharsetDecoderICU;-><init>(Ljava/nio/charset/Charset;FJ)V

    .line 59
    .local v3, result:Ljava/nio/charset/CharsetDecoderICU;
    const-wide/16 v0, 0x0

    .line 60
    invoke-direct {v3}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1e

    .line 63
    cmp-long v4, v0, v5

    if-eqz v4, :cond_1d

    .line 64
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_1d
    return-object v3

    .line 63
    .end local v2           #averageCharsPerByte:F
    .end local v3           #result:Ljava/nio/charset/CharsetDecoderICU;
    :catchall_1e
    move-exception v4

    cmp-long v5, v0, v5

    if-eqz v5, :cond_26

    .line 64
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_26
    throw v4
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 217
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 220
    return-void
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .registers 6
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 207
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 208
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 214
    return-void

    .line 210
    :cond_1c
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_18
.end method

.method private updateCallback()V
    .registers 3

    .prologue
    .line 87
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    .line 88
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 89
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 91
    :cond_17
    return-void
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 11
    .parameter "in"
    .parameter "out"

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 138
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 157
    :goto_9
    return-object v0

    .line 141
    :cond_a
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v1

    aput v1, v0, v2

    .line 142
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 145
    :try_start_1b
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    iget v5, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    .line 146
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3d

    .line 147
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_72

    .line 156
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 157
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 148
    :cond_3d
    :try_start_3d
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_53

    .line 149
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_72

    move-result-object v0

    .line 156
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 157
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 150
    :cond_53
    :try_start_53
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_69

    .line 151
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_72

    move-result-object v0

    .line 156
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 157
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 154
    :cond_69
    :try_start_69
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_72

    .line 156
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 157
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 156
    :catchall_72
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 157
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 166
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 168
    return-void

    .line 166
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 10
    .parameter "out"

    .prologue
    .line 110
    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    .line 112
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 114
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 115
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 117
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    iget v3, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    iget v5, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    .line 118
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 119
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_46

    .line 120
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_6a

    .line 131
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 132
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    :goto_45
    return-object v0

    .line 121
    :cond_46
    :try_start_46
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_63

    .line 122
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_72

    .line 123
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_6a

    move-result-object v0

    .line 131
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 132
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    goto :goto_45

    .line 126
    :cond_63
    :try_start_63
    iget v0, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6a

    .line 131
    :catchall_6a
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 132
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    throw v0

    .line 129
    :cond_72
    :try_start_72
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_6a

    .line 131
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 132
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoderICU;->implReset()V

    goto :goto_45
.end method

.method protected final implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    .line 80
    return-void
.end method

.method protected final implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    .line 84
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .registers 2
    .parameter "newReplacement"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/nio/charset/CharsetDecoderICU;->updateCallback()V

    .line 76
    return-void
.end method

.method protected implReset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    iget-wide v0, p0, Ljava/nio/charset/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetByteToChar(J)V

    .line 95
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    aput v2, v0, v2

    .line 96
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 98
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->output:[C

    .line 99
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->input:[B

    .line 100
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedInput:[B

    .line 101
    iput-object v3, p0, Ljava/nio/charset/CharsetDecoderICU;->allocatedOutput:[C

    .line 102
    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->ec:I

    .line 103
    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->inEnd:I

    .line 104
    iput v2, p0, Ljava/nio/charset/CharsetDecoderICU;->outEnd:I

    .line 105
    return-void
.end method
