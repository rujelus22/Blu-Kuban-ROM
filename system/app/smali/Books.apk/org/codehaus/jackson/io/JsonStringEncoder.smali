.class public final Lorg/codehaus/jackson/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C

.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected final _quoteBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_CHARS:[C

    .line 24
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->HEX_BYTES:[B

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x30

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 72
    return-void
.end method

.method private _convertSurrogate(II)I
    .registers 6
    .parameter "firstPart"
    .parameter "secondPart"

    .prologue
    const v2, 0xdc00

    .line 387
    if-lt p2, v2, :cond_a

    const v0, 0xdfff

    if-le p2, v0, :cond_3b

    .line 388
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_3b
    const/high16 v0, 0x1

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private _throwIllegalSurrogate(I)V
    .registers 5
    .parameter "code"

    .prologue
    .line 395
    const v0, 0x10ffff

    if-le p1, v0, :cond_28

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_28
    const v0, 0xd800

    if-lt p1, v0, :cond_78

    .line 399
    const v0, 0xdbff

    if-gt p1, v0, :cond_55

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lorg/codehaus/jackson/io/JsonStringEncoder;
    .registers 4

    .prologue
    .line 80
    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 81
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/io/JsonStringEncoder;>;"
    if-nez v1, :cond_1d

    const/4 v0, 0x0

    .line 83
    .local v0, enc:Lorg/codehaus/jackson/io/JsonStringEncoder;
    :goto_b
    if-nez v0, :cond_1c

    .line 84
    new-instance v0, Lorg/codehaus/jackson/io/JsonStringEncoder;

    .end local v0           #enc:Lorg/codehaus/jackson/io/JsonStringEncoder;
    invoke-direct {v0}, Lorg/codehaus/jackson/io/JsonStringEncoder;-><init>()V

    .line 85
    .restart local v0       #enc:Lorg/codehaus/jackson/io/JsonStringEncoder;
    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_1c
    return-object v0

    .line 81
    .end local v0           #enc:Lorg/codehaus/jackson/io/JsonStringEncoder;
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/io/JsonStringEncoder;

    move-object v0, v2

    goto :goto_b
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .registers 12
    .parameter "text"

    .prologue
    .line 254
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 255
    .local v0, byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;
    if-nez v0, :cond_c

    .line 257
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .end local v0           #byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .restart local v0       #byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;
    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 259
    :cond_c
    const/4 v3, 0x0

    .line 260
    .local v3, inputPtr:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 261
    .local v2, inputEnd:I
    const/4 v7, 0x0

    .line 262
    .local v7, outputPtr:I
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v5

    .line 263
    .local v5, outputBuffer:[B
    array-length v6, v5

    .local v6, outputEnd:I
    move v4, v3

    .line 266
    .end local v3           #inputPtr:I
    .local v4, inputPtr:I
    :goto_18
    if-ge v4, v2, :cond_f0

    .line 267
    add-int/lit8 v3, v4, 0x1

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c:I
    move v4, v3

    .line 270
    .end local v3           #inputPtr:I
    .restart local v4       #inputPtr:I
    :goto_21
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_46

    .line 271
    if-lt v7, v6, :cond_2d

    .line 272
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 273
    array-length v6, v5

    .line 274
    const/4 v7, 0x0

    .line 276
    :cond_2d
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .local v8, outputPtr:I
    int-to-byte v9, v1

    aput-byte v9, v5, v7

    .line 277
    if-lt v4, v2, :cond_3d

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v3, v4

    .line 335
    .end local v1           #c:I
    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    :goto_36
    iget-object v9, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->_byteBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v9, v7}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v9

    return-object v9

    .line 280
    .end local v3           #inputPtr:I
    .end local v7           #outputPtr:I
    .restart local v1       #c:I
    .restart local v4       #inputPtr:I
    .restart local v8       #outputPtr:I
    :cond_3d
    add-int/lit8 v3, v4, 0x1

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v4, v3

    .end local v3           #inputPtr:I
    .restart local v4       #inputPtr:I
    goto :goto_21

    .line 284
    :cond_46
    if-lt v7, v6, :cond_ed

    .line 285
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 286
    array-length v6, v5

    .line 287
    const/4 v7, 0x0

    move v8, v7

    .line 289
    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    :goto_4f
    const/16 v9, 0x800

    if-ge v1, v9, :cond_71

    .line 290
    add-int/lit8 v7, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    move v3, v4

    .line 328
    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    :goto_5d
    if-lt v7, v6, :cond_65

    .line 329
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 330
    array-length v6, v5

    .line 331
    const/4 v7, 0x0

    .line 333
    :cond_65
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v4, v3

    .line 334
    .end local v3           #inputPtr:I
    .restart local v4       #inputPtr:I
    goto :goto_18

    .line 293
    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    :cond_71
    const v9, 0xd800

    if-lt v1, v9, :cond_7b

    const v9, 0xdfff

    if-le v1, v9, :cond_9a

    .line 294
    :cond_7b
    add-int/lit8 v7, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 295
    if-lt v7, v6, :cond_8c

    .line 296
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 297
    array-length v6, v5

    .line 298
    const/4 v7, 0x0

    .line 300
    :cond_8c
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v3, v4

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    goto :goto_5d

    .line 302
    .end local v3           #inputPtr:I
    .end local v7           #outputPtr:I
    .restart local v4       #inputPtr:I
    .restart local v8       #outputPtr:I
    :cond_9a
    const v9, 0xdbff

    if-le v1, v9, :cond_a2

    .line 303
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 306
    :cond_a2
    if-lt v4, v2, :cond_a7

    .line 307
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 309
    :cond_a7
    add-int/lit8 v3, v4, 0x1

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v1, v9}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v1

    .line 310
    const v9, 0x10ffff

    if-le v1, v9, :cond_b9

    .line 311
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 313
    :cond_b9
    add-int/lit8 v7, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 314
    if-lt v7, v6, :cond_ca

    .line 315
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 316
    array-length v6, v5

    .line 317
    const/4 v7, 0x0

    .line 319
    :cond_ca
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    .line 320
    if-lt v8, v6, :cond_eb

    .line 321
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 322
    array-length v6, v5

    .line 323
    const/4 v7, 0x0

    .line 325
    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    :goto_dd
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    goto/16 :goto_5d

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    :cond_eb
    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    goto :goto_dd

    .end local v3           #inputPtr:I
    .restart local v4       #inputPtr:I
    :cond_ed
    move v8, v7

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    goto/16 :goto_4f

    .end local v1           #c:I
    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    :cond_f0
    move v3, v4

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    goto/16 :goto_36
.end method
