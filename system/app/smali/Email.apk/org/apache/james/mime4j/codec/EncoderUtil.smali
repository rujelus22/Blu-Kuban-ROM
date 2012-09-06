.class public Lorg/apache/james/mime4j/codec/EncoderUtil;
.super Ljava/lang/Object;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;,
        Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    }
.end annotation


# static fields
.field private static final ATEXT_CHARS:Ljava/util/BitSet;

.field static final BASE64_TABLE:[B

.field private static final Q_REGULAR_CHARS:Ljava/util/BitSet;

.field private static final Q_RESTRICTED_CHARS:Ljava/util/BitSet;

.field private static final TOKEN_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    .line 55
    const-string v0, "=_?"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 57
    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    .line 66
    const-string v0, "()<>@,;:\\\"/[]?="

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->TOKEN_CHARS:Ljava/util/BitSet;

    .line 68
    const-string v0, "()<>@.,;:\\\"[]"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    return-void

    .line 45
    :array_2a
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method private static bEncodedLength([B)I
    .registers 2
    .parameter "bytes"

    .prologue
    .line 537
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 6
    .parameter "text"

    .prologue
    .line 594
    const/4 v0, 0x1

    .line 595
    .local v0, ascii:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 596
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_6
    if-ge v2, v3, :cond_1b

    .line 597
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 598
    .local v1, ch:C
    const/16 v4, 0xff

    if-le v1, v4, :cond_13

    .line 599
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 605
    .end local v1           #ch:C
    :goto_12
    return-object v4

    .line 601
    .restart local v1       #ch:C
    :cond_13
    const/16 v4, 0x7f

    if-le v1, v4, :cond_18

    .line 602
    const/4 v0, 0x0

    .line 596
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 605
    .end local v1           #ch:C
    :cond_1b
    if-eqz v0, :cond_20

    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_12

    :cond_20
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_12
.end method

.method private static determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    .registers 9
    .parameter "bytes"
    .parameter "usage"

    .prologue
    .line 609
    array-length v5, p0

    if-nez v5, :cond_6

    .line 610
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    .line 624
    :goto_5
    return-object v5

    .line 612
    :cond_6
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v5, :cond_24

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 615
    .local v2, qChars:Ljava/util/BitSet;
    :goto_c
    const/4 v3, 0x0

    .line 616
    .local v3, qEncoded:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v5, p0

    if-ge v0, v5, :cond_27

    .line 617
    aget-byte v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 618
    .local v4, v:I
    const/16 v5, 0x20

    if-eq v4, v5, :cond_21

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_21

    .line 619
    add-int/lit8 v3, v3, 0x1

    .line 616
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 612
    .end local v0           #i:I
    .end local v2           #qChars:Ljava/util/BitSet;
    .end local v3           #qEncoded:I
    .end local v4           #v:I
    :cond_24
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_c

    .line 623
    .restart local v0       #i:I
    .restart local v2       #qChars:Ljava/util/BitSet;
    .restart local v3       #qEncoded:I
    :cond_27
    mul-int/lit8 v5, v3, 0x64

    array-length v6, p0

    div-int v1, v5, v6

    .line 624
    .local v1, percentage:I
    const/16 v5, 0x1e

    if-le v1, v5, :cond_33

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_5

    :cond_33
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_5
.end method

.method private static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 5
    .parameter "text"
    .parameter "charset"

    .prologue
    .line 585
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 586
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 587
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 588
    return-object v1
.end method

.method public static encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "displayName"

    .prologue
    .line 127
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isAtomPhrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    .end local p0
    :goto_6
    return-object p0

    .line 129
    .restart local p0
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 130
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 132
    :cond_15
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private static encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .registers 16
    .parameter "prefix"
    .parameter "text"
    .parameter "usedCharacters"
    .parameter "charset"
    .parameter "bytes"

    .prologue
    .line 514
    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->bEncodedLength([B)I

    move-result v2

    .line 516
    .local v2, encodedLength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v2

    const-string v10, "?="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int v6, v9, v10

    .line 518
    .local v6, totalLength:I
    rsub-int/lit8 v9, p2, 0x4b

    if-gt v6, v9, :cond_31

    .line 519
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 532
    :goto_30
    return-object v9

    .line 521
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v5

    .line 523
    .local v5, splitOffset:I
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, part1:Ljava/lang/String;
    invoke-static {v3, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 525
    .local v0, bytes1:[B
    invoke-static {p0, v3, p2, p3, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, word1:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, part2:Ljava/lang/String;
    invoke-static {v4, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 530
    .local v1, bytes2:[B
    const/4 v9, 0x0

    invoke-static {p0, v4, v9, p3, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v8

    .line 532
    .local v8, word2:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_30
.end method

.method public static encodeB([B)Ljava/lang/String;
    .registers 8
    .parameter "bytes"

    .prologue
    const/16 v6, 0x3d

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 362
    .local v2, idx:I
    array-length v1, p0

    .line 363
    .local v1, end:I
    :goto_9
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_55

    .line 364
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 366
    .local v0, data:I
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    and-int/lit8 v5, v0, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v2, v2, 0x3

    goto :goto_9

    .line 372
    .end local v0           #data:I
    :cond_55
    add-int/lit8 v4, v1, -0x2

    if-ne v2, v4, :cond_95

    .line 373
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int v0, v4, v5

    .line 374
    .restart local v0       #data:I
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    .end local v0           #data:I
    :cond_90
    :goto_90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 379
    :cond_95
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_90

    .line 380
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x10

    .line 381
    .restart local v0       #data:I
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_90
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .registers 4
    .parameter "text"
    .parameter "usage"

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .registers 4
    .parameter "text"
    .parameter "usage"
    .parameter "usedCharacters"

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;
    .registers 12
    .parameter "text"
    .parameter "usage"
    .parameter "usedCharacters"
    .parameter "charset"
    .parameter "encoding"

    .prologue
    .line 322
    if-nez p0, :cond_8

    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 324
    :cond_8
    if-ltz p2, :cond_e

    const/16 v1, 0x32

    if-le p2, v1, :cond_14

    .line 325
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 327
    :cond_14
    if-nez p3, :cond_1a

    .line 328
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 330
    :cond_1a
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, mimeCharset:Ljava/lang/String;
    if-nez v6, :cond_2c

    .line 333
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported charset"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_2c
    invoke-static {p0, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 338
    .local v5, bytes:[B
    if-nez p4, :cond_36

    .line 339
    invoke-static {v5, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    move-result-object p4

    .line 341
    :cond_36
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    if-ne p4, v1, :cond_58

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?B?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, prefix:Ljava/lang/String;
    invoke-static {v0, p0, p2, p3, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    .line 346
    :goto_57
    return-object v1

    .line 345
    .end local v0           #prefix:Ljava/lang/String;
    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?Q?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prefix:Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 346
    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_57
.end method

.method public static encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .registers 4
    .parameter "text"
    .parameter "usage"
    .parameter "usedCharacters"

    .prologue
    .line 196
    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 197
    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object p0

    .line 199
    .end local p0
    :cond_a
    return-object p0
.end method

.method private static encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .registers 25
    .parameter "prefix"
    .parameter "text"
    .parameter "usage"
    .parameter "usedCharacters"
    .parameter "charset"
    .parameter "bytes"

    .prologue
    .line 542
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I

    move-result v14

    .line 544
    .local v14, encodedLength:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v14

    const-string v4, "?="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v16, v2, v4

    .line 546
    .local v16, totalLength:I
    rsub-int/lit8 v2, p3, 0x4b

    move/from16 v0, v16

    if-gt v0, v2, :cond_3d

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 560
    :goto_3c
    return-object v2

    .line 549
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v15

    .line 551
    .local v15, splitOffset:I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, part1:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .local v7, bytes1:[B
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 553
    invoke-static/range {v2 .. v7}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v17

    .line 556
    .local v17, word1:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 557
    .local v9, part2:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v9, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v13

    .line 558
    .local v13, bytes2:[B
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-static/range {v8 .. v13}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v18

    .line 560
    .local v18, word2:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3c
.end method

.method public static encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .registers 8
    .parameter "bytes"
    .parameter "usage"

    .prologue
    .line 402
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v5, :cond_1f

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 405
    .local v2, qChars:Ljava/util/BitSet;
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v3, sb:Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 408
    .local v0, end:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_d
    if-ge v1, v0, :cond_45

    .line 409
    aget-byte v5, p0, v1

    and-int/lit16 v4, v5, 0xff

    .line 410
    .local v4, v:I
    const/16 v5, 0x20

    if-ne v4, v5, :cond_22

    .line 411
    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 402
    .end local v0           #end:I
    .end local v1           #idx:I
    .end local v2           #qChars:Ljava/util/BitSet;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #v:I
    :cond_1f
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_6

    .line 412
    .restart local v0       #end:I
    .restart local v1       #idx:I
    .restart local v2       #qChars:Ljava/util/BitSet;
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    .restart local v4       #v:I
    :cond_22
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_40

    .line 413
    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    ushr-int/lit8 v5, v4, 0x4

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 417
    :cond_40
    int-to-char v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 421
    .end local v4           #v:I
    :cond_45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static hasToBeEncoded(Ljava/lang/String;I)Z
    .registers 8
    .parameter "text"
    .parameter "usedCharacters"

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x1

    .line 217
    if-nez p0, :cond_b

    .line 218
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 219
    :cond_b
    if-ltz p1, :cond_11

    const/16 v4, 0x32

    if-le p1, v4, :cond_17

    .line 220
    :cond_11
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 222
    :cond_17
    move v2, p1

    .line 224
    .local v2, nonWhiteSpaceCount:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3b

    .line 225
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 226
    .local v0, ch:C
    const/16 v4, 0x9

    if-eq v0, v4, :cond_29

    if-ne v0, v5, :cond_2d

    .line 227
    :cond_29
    const/4 v2, 0x0

    .line 224
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 229
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    .line 230
    const/16 v4, 0x4d

    if-le v2, v4, :cond_34

    .line 245
    .end local v0           #ch:C
    :cond_33
    :goto_33
    return v3

    .line 238
    .restart local v0       #ch:C
    :cond_34
    if-lt v0, v5, :cond_33

    const/16 v4, 0x7f

    if-lt v0, v4, :cond_2a

    goto :goto_33

    .line 245
    .end local v0           #ch:C
    :cond_3b
    const/4 v3, 0x0

    goto :goto_33
.end method

.method private static hexDigit(I)C
    .registers 2
    .parameter "i"

    .prologue
    .line 628
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_7
    return v0

    :cond_8
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_7
.end method

.method private static initChars(Ljava/lang/String;)Ljava/util/BitSet;
    .registers 5
    .parameter "specials"

    .prologue
    .line 71
    new-instance v0, Ljava/util/BitSet;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 72
    .local v0, bs:Ljava/util/BitSet;
    const/16 v1, 0x21

    .local v1, ch:C
    :goto_9
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1b

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 72
    :cond_17
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_9

    .line 77
    :cond_1b
    return-object v0
.end method

.method private static isAtomPhrase(Ljava/lang/String;)Z
    .registers 6
    .parameter "str"

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 457
    .local v1, containsAText:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 458
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_6
    if-ge v2, v3, :cond_1f

    .line 459
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 460
    .local v0, ch:C
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 461
    const/4 v1, 0x1

    .line 458
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 462
    :cond_18
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_15

    .line 463
    const/4 v1, 0x0

    .line 467
    .end local v0           #ch:C
    .end local v1           #containsAText:Z
    :cond_1f
    return v1
.end method

.method private static qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I
    .registers 7
    .parameter "bytes"
    .parameter "usage"

    .prologue
    .line 565
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v4, :cond_18

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 568
    .local v2, qChars:Ljava/util/BitSet;
    :goto_6
    const/4 v0, 0x0

    .line 570
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_8
    array-length v4, p0

    if-ge v1, v4, :cond_27

    .line 571
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 572
    .local v3, v:I
    const/16 v4, 0x20

    if-ne v3, v4, :cond_1b

    .line 573
    add-int/lit8 v0, v0, 0x1

    .line 570
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 565
    .end local v0           #count:I
    .end local v1           #idx:I
    .end local v2           #qChars:Ljava/util/BitSet;
    .end local v3           #v:I
    :cond_18
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_6

    .line 574
    .restart local v0       #count:I
    .restart local v1       #idx:I
    .restart local v2       #qChars:Ljava/util/BitSet;
    .restart local v3       #v:I
    :cond_1b
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_24

    .line 575
    add-int/lit8 v0, v0, 0x3

    goto :goto_15

    .line 577
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 581
    .end local v3           #v:I
    :cond_27
    return v0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    .line 508
    const-string v1, "[\\\\\"]"

    const-string v2, "\\\\$0"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, escaped:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
