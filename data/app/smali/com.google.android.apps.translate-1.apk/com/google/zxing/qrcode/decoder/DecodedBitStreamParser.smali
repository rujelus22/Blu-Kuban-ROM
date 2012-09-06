.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C = null

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/16 v0, 0x2d

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x20t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;
    .registers 19
    .parameter "bytes"
    .parameter "version"
    .parameter "ecLevel"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Lcom/google/zxing/common/BitSource;

    invoke-direct {v1, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 56
    .local v1, bits:Lcom/google/zxing/common/BitSource;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v6, 0x32

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    .local v2, result:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 58
    .local v4, currentCharacterSetECI:Lcom/google/zxing/common/CharacterSetECI;
    const/4 v8, 0x0

    .line 59
    .local v8, fc1InEffect:Z
    new-instance v5, Ljava/util/Vector;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    .line 64
    .local v5, byteSegments:Ljava/util/Vector;
    :cond_14
    :try_start_14
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/4 v13, 0x4

    if-ge v6, v13, :cond_51

    .line 66
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 70
    .local v10, mode:Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_1d
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 71
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 73
    :cond_35
    const/4 v8, 0x1

    .line 112
    :cond_36
    :goto_36
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_3b} :catch_69

    move-result v6

    if-eqz v6, :cond_14

    .line 117
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4b

    const/4 v5, 0x0

    .end local v5           #byteSegments:Ljava/util/Vector;
    :cond_4b
    move-object/from16 v0, p2

    invoke-direct {v6, p0, v13, v5, v0}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    return-object v6

    .line 68
    .end local v10           #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v5       #byteSegments:Ljava/util/Vector;
    :cond_51
    const/4 v6, 0x4

    :try_start_52
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v10

    .restart local v10       #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_1d

    .line 74
    :cond_5b
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 77
    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_68} :catch_69

    goto :goto_36

    .line 113
    .end local v10           #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    :catch_69
    move-exception v9

    .line 114
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 78
    .end local v9           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v10       #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_6f
    :try_start_6f
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 80
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v12

    .line 81
    .local v12, value:I
    invoke-static {v12}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v4

    .line 82
    if-nez v4, :cond_36

    .line 83
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 87
    .end local v12           #value:I
    :cond_86
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 89
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    .line 90
    .local v11, subset:I
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    .line 91
    .local v7, countHanzi:I
    const/4 v6, 0x1

    if-ne v11, v6, :cond_36

    .line 92
    invoke-static {v1, v2, v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V

    goto :goto_36

    .line 97
    .end local v7           #countHanzi:I
    .end local v11           #subset:I
    :cond_a4
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 98
    .local v3, count:I
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 99
    invoke-static {v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V

    goto/16 :goto_36

    .line 100
    :cond_bb
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 101
    invoke-static {v1, v2, v3, v8}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_36

    .line 102
    :cond_c8
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d7

    move-object/from16 v6, p3

    .line 103
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Vector;Ljava/util/Hashtable;)V

    goto/16 :goto_36

    .line 104
    :cond_d7
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 105
    invoke-static {v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V

    goto/16 :goto_36

    .line 107
    :cond_e4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
    :try_end_e9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_e9} :catch_69
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;IZ)V
    .registers 10
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .parameter "fc1InEffect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x25

    const/4 v4, 0x1

    .line 229
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 230
    .local v2, start:I
    :goto_7
    if-le p2, v4, :cond_24

    .line 231
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 232
    .local v1, nextTwoCharsBits:I
    div-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 233
    rem-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 234
    add-int/lit8 p2, p2, -0x2

    .line 235
    goto :goto_7

    .line 236
    .end local v1           #nextTwoCharsBits:I
    :cond_24
    if-ne p2, v4, :cond_32

    .line 238
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    :cond_32
    if-eqz p3, :cond_5f

    .line 243
    move v0, v2

    .local v0, i:I
    :goto_35
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_5f

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_56

    .line 245
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_59

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_59

    .line 247
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 243
    :cond_56
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 250
    :cond_59
    const/16 v3, 0x1d

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_56

    .line 255
    .end local v0           #i:I
    :cond_5f
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Vector;Ljava/util/Hashtable;)V
    .registers 12
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .parameter "currentCharacterSetECI"
    .parameter "byteSegments"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 191
    new-array v2, p2, [B

    .line 192
    .local v2, readBytes:[B
    shl-int/lit8 v4, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-le v4, v5, :cond_f

    .line 193
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 195
    :cond_f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, p2, :cond_1e

    .line 196
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 199
    :cond_1e
    if-nez p3, :cond_30

    .line 205
    invoke-static {v2, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, encoding:Ljava/lang/String;
    :goto_24
    :try_start_24
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_35

    .line 214
    invoke-virtual {p4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 215
    return-void

    .line 207
    .end local v0           #encoding:Ljava/lang/String;
    :cond_30
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encoding:Ljava/lang/String;
    goto :goto_24

    .line 211
    :catch_35
    move-exception v3

    .line 212
    .local v3, uce:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V
    .registers 10
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 128
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [B

    .line 129
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 130
    .local v2, offset:I
    :goto_5
    if-lez p2, :cond_35

    .line 132
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 133
    .local v3, twoBytes:I
    div-int/lit8 v5, v3, 0x60

    shl-int/lit8 v5, v5, 0x8

    rem-int/lit8 v6, v3, 0x60

    or-int v0, v5, v6

    .line 134
    .local v0, assembledTwoBytes:I
    const/16 v5, 0x3bf

    if-ge v0, v5, :cond_30

    .line 136
    const v5, 0xa1a1

    add-int/2addr v0, v5

    .line 141
    :goto_1d
    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 142
    add-int/lit8 v5, v2, 0x1

    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 143
    add-int/lit8 v2, v2, 0x2

    .line 144
    add-int/lit8 p2, p2, -0x1

    .line 145
    goto :goto_5

    .line 139
    :cond_30
    const v5, 0xa6a1

    add-int/2addr v0, v5

    goto :goto_1d

    .line 148
    .end local v0           #assembledTwoBytes:I
    .end local v3           #twoBytes:I
    :cond_35
    :try_start_35
    new-instance v5, Ljava/lang/String;

    const-string v6, "GB2312"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_35 .. :try_end_3f} :catch_40

    .line 152
    return-void

    .line 149
    :catch_40
    move-exception v4

    .line 150
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V
    .registers 10
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 159
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [B

    .line 160
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 161
    .local v2, offset:I
    :goto_5
    if-lez p2, :cond_31

    .line 163
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 164
    .local v3, twoBytes:I
    div-int/lit16 v5, v3, 0xc0

    shl-int/lit8 v5, v5, 0x8

    rem-int/lit16 v6, v3, 0xc0

    or-int v0, v5, v6

    .line 165
    .local v0, assembledTwoBytes:I
    const/16 v5, 0x1f00

    if-ge v0, v5, :cond_2c

    .line 167
    const v5, 0x8140

    add-int/2addr v0, v5

    .line 172
    :goto_1d
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 173
    add-int/lit8 v5, v2, 0x1

    int-to-byte v6, v0

    aput-byte v6, v1, v5

    .line 174
    add-int/lit8 v2, v2, 0x2

    .line 175
    add-int/lit8 p2, p2, -0x1

    .line 176
    goto :goto_5

    .line 170
    :cond_2c
    const v5, 0xc140

    add-int/2addr v0, v5

    goto :goto_1d

    .line 179
    .end local v0           #assembledTwoBytes:I
    .end local v3           #twoBytes:I
    :cond_31
    :try_start_31
    new-instance v5, Ljava/lang/String;

    const-string v6, "SJIS"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_3b} :catch_3c

    .line 183
    return-void

    .line 180
    :catch_3c
    move-exception v4

    .line 181
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;I)V
    .registers 8
    .parameter "bits"
    .parameter "result"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 261
    :goto_2
    const/4 v3, 0x3

    if-lt p2, v3, :cond_32

    .line 263
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 264
    .local v1, threeDigitsBits:I
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_12

    .line 265
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 267
    :cond_12
    div-int/lit8 v3, v1, 0x64

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    div-int/lit8 v3, v1, 0xa

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    rem-int/lit8 v3, v1, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    add-int/lit8 p2, p2, -0x3

    .line 271
    goto :goto_2

    .line 272
    .end local v1           #threeDigitsBits:I
    :cond_32
    const/4 v3, 0x2

    if-ne p2, v3, :cond_56

    .line 274
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 275
    .local v2, twoDigitsBits:I
    const/16 v3, 0x64

    if-lt v2, v3, :cond_43

    .line 276
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 278
    :cond_43
    div-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    rem-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    .end local v2           #twoDigitsBits:I
    :cond_55
    :goto_55
    return-void

    .line 280
    :cond_56
    const/4 v3, 0x1

    if-ne p2, v3, :cond_55

    .line 282
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 283
    .local v0, digitBits:I
    if-lt v0, v4, :cond_65

    .line 284
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 286
    :cond_65
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_55
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .registers 7
    .parameter "bits"

    .prologue
    const/16 v5, 0x8

    .line 291
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 292
    .local v0, firstByte:I
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_d

    .line 294
    and-int/lit8 v3, v0, 0x7f

    .line 302
    :goto_c
    return v3

    .line 295
    :cond_d
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1d

    .line 297
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 298
    .local v1, secondByte:I
    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v1

    goto :goto_c

    .line 299
    .end local v1           #secondByte:I
    :cond_1d
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2f

    .line 301
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 302
    .local v2, secondThirdBytes:I
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v2

    goto :goto_c

    .line 304
    .end local v2           #secondThirdBytes:I
    :cond_2f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad ECI bits starting with byte "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static toAlphaNumericChar(I)C
    .registers 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-lt p0, v0, :cond_a

    .line 219
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 221
    :cond_a
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0
.end method
