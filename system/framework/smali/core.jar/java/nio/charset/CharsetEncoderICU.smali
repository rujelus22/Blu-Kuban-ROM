.class final Ljava/nio/charset/CharsetEncoderICU;
.super Ljava/nio/charset/CharsetEncoder;
.source "CharsetEncoderICU.java"


# static fields
.field private static final DEFAULT_REPLACEMENTS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_CHARS:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[C

.field private allocatedOutput:[B

.field private converterHandle:J

.field private data:[I

.field private ec:I

.field private inEnd:I

.field private input:[C

.field private outEnd:I

.field private output:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    .line 35
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 36
    .local v0, questionMark:[B
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "UTF-8"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "ISO-8859-1"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "US-ASCII"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;FF[BJ)V
    .registers 14
    .parameter "cs"
    .parameter "averageBytesPerChar"
    .parameter "maxBytesPerChar"
    .parameter "replacement"
    .parameter "address"

    .prologue
    const/4 v6, 0x0

    .line 96
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[BZ)V

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    .line 54
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 55
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 57
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 58
    iput-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 98
    iput-wide p5, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    .line 99
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    .line 100
    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .registers 4
    .parameter "out"

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    .line 215
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :goto_20
    return v0

    .line 217
    :cond_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    .line 218
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    if-eqz v0, :cond_32

    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    array-length v1, v1

    if-le v0, v1, :cond_38

    .line 219
    :cond_32
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 222
    :cond_38
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 223
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .registers 6
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 229
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iput-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 230
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    .line 231
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 243
    :goto_21
    return v1

    .line 233
    :cond_22
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    .line 234
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    if-eqz v2, :cond_33

    iget v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    array-length v3, v3

    if-le v2, v3, :cond_39

    .line 235
    :cond_33
    iget v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    new-array v2, v2, [C

    iput-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 238
    :cond_39
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 239
    .local v0, pos:I
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 240
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 242
    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    iput-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    goto :goto_21
.end method

.method private static makeReplacement(Ljava/lang/String;J)[B
    .registers 5
    .parameter "icuCanonicalName"
    .parameter "address"

    .prologue
    .line 87
    sget-object v1, Ljava/nio/charset/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 88
    .local v0, replacement:[B
    if-eqz v0, :cond_11

    .line 89
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 92
    :goto_10
    return-object v1

    :cond_11
    invoke-static {p1, p2}, Llibcore/icu/NativeConverter;->getSubstitutionBytes(J)[B

    move-result-object v1

    goto :goto_10
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Ljava/nio/charset/CharsetEncoderICU;
    .registers 11
    .parameter "cs"
    .parameter "icuCanonicalName"

    .prologue
    const-wide/16 v7, 0x0

    .line 69
    const-wide/16 v5, 0x0

    .line 71
    .local v5, address:J
    :try_start_4
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v5

    .line 72
    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->getAveBytesPerChar(J)F

    move-result v2

    .line 73
    .local v2, averageBytesPerChar:F
    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v1

    int-to-float v3, v1

    .line 74
    .local v3, maxBytesPerChar:F
    invoke-static {p1, v5, v6}, Ljava/nio/charset/CharsetEncoderICU;->makeReplacement(Ljava/lang/String;J)[B

    move-result-object v4

    .line 75
    .local v4, replacement:[B
    new-instance v0, Ljava/nio/charset/CharsetEncoderICU;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljava/nio/charset/CharsetEncoderICU;-><init>(Ljava/nio/charset/Charset;FF[BJ)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_25

    .line 76
    .local v0, result:Ljava/nio/charset/CharsetEncoderICU;
    const-wide/16 v5, 0x0

    .line 79
    cmp-long v1, v5, v7

    if-eqz v1, :cond_24

    .line 80
    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_24
    return-object v0

    .line 79
    .end local v0           #result:Ljava/nio/charset/CharsetEncoderICU;
    .end local v2           #averageBytesPerChar:F
    .end local v3           #maxBytesPerChar:F
    .end local v4           #replacement:[B
    :catchall_25
    move-exception v1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2d

    .line 80
    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_2d
    throw v1
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .registers 6
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 248
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 255
    return-void

    .line 251
    :cond_1c
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_18
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 258
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 261
    return-void
.end method

.method private updateCallback()V
    .registers 3

    .prologue
    .line 115
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    .line 116
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 117
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 119
    :cond_17
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->canEncode(I)Z

    move-result v0

    return v0
.end method

.method public canEncode(I)Z
    .registers 4
    .parameter "codePoint"

    .prologue
    .line 199
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeConverter;->canEncode(JI)Z

    move-result v0

    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 11
    .parameter "in"
    .parameter "out"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    .line 166
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 190
    :goto_a
    return-object v0

    .line 169
    :cond_b
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v1

    aput v1, v0, v3

    .line 170
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 171
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aput v3, v0, v4

    .line 174
    :try_start_20
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    iget v5, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    .line 175
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 176
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4a

    .line 177
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_91

    .line 189
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 178
    :cond_4a
    :try_start_4a
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_60

    .line 179
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_91

    move-result-object v0

    .line 189
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 180
    :cond_60
    :try_start_60
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_76

    .line 181
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_91

    move-result-object v0

    .line 189
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 183
    :cond_76
    :try_start_76
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_91
    .catchall {:try_start_76 .. :try_end_91} :catchall_91

    .line 189
    :catchall_91
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    throw v0

    .line 187
    :cond_99
    :try_start_99
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_91

    .line 189
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 190
    invoke-direct {p0, p2}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_a
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    .line 205
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 207
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 209
    return-void

    .line 207
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 10
    .parameter "out"

    .prologue
    .line 138
    :try_start_0
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    .line 140
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 142
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 143
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 145
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    iget v3, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    iget v5, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    iget-object v6, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v0

    iput v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    .line 146
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 147
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_46

    .line 148
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_6a

    .line 159
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    :goto_45
    return-object v0

    .line 149
    :cond_46
    :try_start_46
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_63

    .line 150
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_72

    .line 151
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_6a

    move-result-object v0

    .line 159
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    goto :goto_45

    .line 154
    :cond_63
    :try_start_63
    iget v0, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6a

    .line 159
    :catchall_6a
    move-exception v0

    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    throw v0

    .line 157
    :cond_72
    :try_start_72
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_6a

    .line 159
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoderICU;->implReset()V

    goto :goto_45
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    .line 108
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    .line 112
    return-void
.end method

.method protected implReplaceWith([B)V
    .registers 2
    .parameter "newReplacement"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/nio/charset/CharsetEncoderICU;->updateCallback()V

    .line 104
    return-void
.end method

.method protected implReset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 122
    iget-wide v0, p0, Ljava/nio/charset/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetCharToByte(J)V

    .line 123
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    aput v2, v0, v2

    .line 124
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 125
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 126
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->output:[B

    .line 127
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->input:[C

    .line 128
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedInput:[C

    .line 129
    iput-object v3, p0, Ljava/nio/charset/CharsetEncoderICU;->allocatedOutput:[B

    .line 130
    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->ec:I

    .line 131
    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->inEnd:I

    .line 132
    iput v2, p0, Ljava/nio/charset/CharsetEncoderICU;->outEnd:I

    .line 133
    return-void
.end method
