.class public Lorg/apache/james/mime4j/codec/EncoderUtil;
.super Ljava/lang/Object;


# static fields
.field private static final ATEXT_CHARS:Ljava/util/BitSet; = null

.field private static final BASE64_PAD:C = '='

.field private static final BASE64_TABLE:[B = null

.field private static final ENCODED_WORD_MAX_LENGTH:I = 0x4b

.field private static final ENC_WORD_PREFIX:Ljava/lang/String; = "=?"

.field private static final ENC_WORD_SUFFIX:Ljava/lang/String; = "?="

.field private static final MAX_USED_CHARACTERS:I = 0x32

.field private static final Q_REGULAR_CHARS:Ljava/util/BitSet;

.field private static final Q_RESTRICTED_CHARS:Ljava/util/BitSet;

.field private static final TOKEN_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    const-string v0, "=_?"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    const-string v0, "()<>@,;:\\\"/[]?="

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->TOKEN_CHARS:Ljava/util/BitSet;

    const-string v0, "()<>@.,;:\\\"[]"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bEncodedLength([B)I
    .registers 2

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_7
    if-ge v2, v3, :cond_1c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xff

    if-le v4, v5, :cond_14

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    :goto_13
    return-object v0

    :cond_14
    const/16 v5, 0x7f

    if-le v4, v5, :cond_19

    move v0, v1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1c
    if-eqz v0, :cond_21

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_13

    :cond_21
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_13
.end method

.method private static determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    .registers 7

    const/4 v1, 0x0

    array-length v0, p0

    if-nez v0, :cond_7

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v0, :cond_24

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    :goto_d
    move v2, v1

    :goto_e
    array-length v3, p0

    if-ge v1, v3, :cond_27

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-eq v3, v4, :cond_21

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_21

    add-int/lit8 v2, v2, 0x1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_d

    :cond_27
    mul-int/lit8 v0, v2, 0x64

    array-length v1, p0

    div-int/2addr v0, v1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_32

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_6

    :cond_32
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_6
.end method

.method private static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 4

    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public static encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isAtomPhrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_15
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static encodeAddressLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isDotAtomText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private static encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->bEncodedLength([B)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "?="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    rsub-int/lit8 v1, p2, 0x4b

    if-gt v0, v1, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    return-object v0

    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {p0, v0, p2, p3, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {p0, v1, v3, p3, v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method public static encodeB([B)Ljava/lang/String;
    .registers 8

    const/16 v6, 0x3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    array-length v2, p0

    :goto_9
    add-int/lit8 v3, v2, -0x2

    if-ge v0, v3, :cond_54

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v3, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    goto :goto_9

    :cond_54
    add-int/lit8 v3, v2, -0x2

    if-ne v0, v3, :cond_93

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v3, v0, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8e
    :goto_8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_93
    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_8e

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v3, v0, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8e
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;
    .registers 11

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    if-ltz p2, :cond_e

    const/16 v0, 0x32

    if-le p2, v0, :cond_14

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_14
    if-nez p3, :cond_79

    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    :goto_1a
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported charset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-static {p0, v4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    if-nez p4, :cond_36

    invoke-static {v5, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    move-result-object p4

    :cond_36
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    if-ne p4, v1, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?B?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, v4, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    :goto_57
    return-object v0

    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?Q?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    :cond_79
    move-object v4, p3

    goto :goto_1a
.end method

.method public static encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public static encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method private static encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .registers 14

    const/4 v7, 0x0

    invoke-static {p5, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "?="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    rsub-int/lit8 v1, p3, 0x4b

    if-gt v0, v1, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    return-object v0

    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move v3, v7

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method public static encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .registers 8

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v0, :cond_1f

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v3, :cond_45

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x20

    if-ne v4, v5, :cond_22

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_6

    :cond_22
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_40

    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v5, v4, 0x4

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_40
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasToBeEncoded(Ljava/lang/String;I)Z
    .registers 8

    const/16 v5, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    if-ltz p1, :cond_12

    const/16 v0, 0x32

    if-le p1, v0, :cond_18

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_34

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_29

    if-ne v3, v5, :cond_2d

    :cond_29
    move p1, v1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2d
    add-int/lit8 p1, p1, 0x1

    const/16 v4, 0x4d

    if-le p1, v4, :cond_35

    move v1, v2

    :cond_34
    :goto_34
    return v1

    :cond_35
    if-lt v3, v5, :cond_3b

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_2a

    :cond_3b
    move v1, v2

    goto :goto_34
.end method

.method private static hexDigit(I)C
    .registers 2

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

    new-instance v1, Ljava/util/BitSet;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/16 v0, 0x21

    :goto_9
    const/16 v2, 0x7f

    if-ge v0, v2, :cond_1b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_17
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_9

    :cond_1b
    return-object v1
.end method

.method private static isAtomPhrase(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_7
    if-ge v2, v3, :cond_20

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v0, 0x1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_16

    move v0, v1

    :cond_20
    return v0
.end method

.method private static isDotAtomText(Ljava/lang/String;)Z
    .registers 7

    const/16 v3, 0x2e

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    move v1, v0

    move v2, v3

    :goto_c
    if-ge v1, v5, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1e

    if-eq v2, v3, :cond_9

    add-int/lit8 v2, v5, -0x1

    if-eq v1, v2, :cond_9

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_c

    :cond_1e
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_9

    :cond_27
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isToken(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_1a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->TOKEN_CHARS:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v0, :cond_18

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    :goto_7
    move v2, v1

    :goto_8
    array-length v3, p0

    if-ge v1, v3, :cond_27

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1b

    add-int/lit8 v2, v2, 0x1

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_7

    :cond_1b
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_24

    add-int/lit8 v2, v2, 0x3

    goto :goto_15

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_27
    return v2
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "[\\\\\"]"

    const-string v1, "\\\\$0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
