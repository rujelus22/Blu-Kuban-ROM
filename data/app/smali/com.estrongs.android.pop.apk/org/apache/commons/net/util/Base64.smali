.class public Lorg/apache/commons/net/util/Base64;
.super Ljava/lang/Object;


# static fields
.field static final CHUNK_SEPARATOR:[B = null

.field static final CHUNK_SIZE:I = 0x4c

.field private static final DECODE_TABLE:[B = null

.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private buffer:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private final encodeTable:[B

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x40

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_28

    sput-object v0, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_70

    sput-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    return-void

    :array_22
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_28
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

    :array_4c
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
        0x2dt
        0x5ft
    .end array-data

    :array_70
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0x3et
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0x3ft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    sget-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_9

    sget-object p2, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    move p1, v1

    :cond_9
    if-lez p1, :cond_52

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x4

    :goto_f
    iput v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p1, :cond_54

    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    :goto_23
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->containsBase64Byte([B)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    move v0, v1

    goto :goto_f

    :cond_54
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    goto :goto_23

    :cond_58
    if-eqz p3, :cond_5f

    sget-object v0, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_5c
    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    return-void

    :cond_5f
    sget-object v0, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_5c
.end method

.method public constructor <init>(Z)V
    .registers 4

    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    return-void
.end method

.method private static containsBase64Byte([B)Z
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_e

    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .registers 2

    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .registers 2

    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .registers 4

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .registers 4

    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .registers 9

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v2, v0, v2

    if-lez v2, :cond_36

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") than the specified maxium size of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_36
    if-eqz p1, :cond_42

    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0, p2}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    :goto_3d
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_5

    :cond_42
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v2, p2}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    goto :goto_3d
.end method

.method public static encodeBase64Chunked([B)[B
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private getBytesUtf8(Ljava/lang/String;)[B
    .registers 4

    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getEncodeLength([BI[B)J
    .registers 13

    const-wide/16 v8, 0x4

    const-wide/16 v6, 0x0

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v3, v0, 0x4

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    int-to-long v1, v0

    rem-long v4, v1, v8

    cmp-long v0, v4, v6

    if-eqz v0, :cond_17

    sub-long v4, v8, v4

    add-long/2addr v1, v4

    :cond_17
    if-lez v3, :cond_31

    int-to-long v4, v3

    rem-long v4, v1, v4

    cmp-long v0, v4, v6

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_21
    int-to-long v3, v3

    div-long v3, v1, v3

    array-length v5, p2

    int-to-long v5, v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    if-nez v0, :cond_31

    array-length v0, p2

    int-to-long v3, v0

    add-long v0, v1, v3

    :goto_2e
    return-wide v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_21

    :cond_31
    move-wide v0, v1

    goto :goto_2e
.end method

.method public static isArrayByteBase64([B)Z
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_19

    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_16

    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/net/util/Base64;->isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_16

    :goto_15
    return v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public static isBase64(B)Z
    .registers 3

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_12

    if-ltz p0, :cond_14

    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v0, v0

    if-ge p0, v0, :cond_14

    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static isWhiteSpace(B)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private static newStringUtf8([B)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private reset()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    iput-boolean v1, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    return-void
.end method

.method private resizeBuffer()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-nez v0, :cond_10

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    goto :goto_f
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .registers 6

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v3, v0, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v3, 0x8

    if-ne v0, v1, :cond_24

    move-object v0, v2

    :goto_23
    return-object v0

    :cond_24
    const/4 v1, 0x0

    array-length v0, v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_31

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_31
    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_23
.end method


# virtual methods
.method avail()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    sub-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_18

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_c

    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method decode([BII)V
    .registers 10

    const/4 v5, 0x1

    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    if-gez p3, :cond_a

    iput-boolean v5, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_28

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    if-ge v1, v2, :cond_1e

    :cond_1b
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    :cond_1e
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_54

    iput-boolean v5, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    :cond_28
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    packed-switch v0, :pswitch_data_d0

    goto :goto_5

    :pswitch_3c
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_5

    :cond_54
    if-ltz v2, :cond_a7

    sget-object v3, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v3, v3

    if-ge v2, v3, :cond_a7

    sget-object v3, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    aget-byte v2, v3, v2

    if-ltz v2, :cond_a7

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-nez v2, :cond_a7

    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_a7
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_b

    :pswitch_ac
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_5

    :pswitch_data_d0
    .packed-switch 0x2
        :pswitch_3c
        :pswitch_ac
    .end packed-switch
.end method

.method public decode(Ljava/lang/String;)[B
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/Base64;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    if-eqz p1, :cond_9

    array-length v0, p1

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-object p1

    :cond_a
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    long-to-int v0, v0

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    new-array p1, v0, [B

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    goto :goto_9
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, [B

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method encode([BII)V
    .registers 11

    const/16 v5, 0x3d

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-gez p3, :cond_d1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge v0, v1, :cond_1e

    :cond_1b
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    :cond_1e
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    packed-switch v0, :pswitch_data_17c

    :cond_23
    :goto_23
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez v0, :cond_7

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    goto :goto_7

    :pswitch_40
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v5, v0, v1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v5, v0, v1

    goto :goto_23

    :pswitch_83
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0xa

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v5, v0, v1

    goto/16 :goto_23

    :cond_d1
    move v1, v2

    :goto_d2
    if-ge v1, p3, :cond_7

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v0, v0

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v0, v3

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge v0, v3, :cond_e5

    :cond_e2
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    :cond_e5
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    if-gez v0, :cond_f7

    add-int/lit16 v0, v0, 0x100

    :cond_f7
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-nez v0, :cond_176

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez v0, :cond_176

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    if-gt v0, v4, :cond_176

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v6, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    :cond_176
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_d2

    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_83
    .end packed-switch
.end method

.method public encode([B)[B
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    if-eqz p1, :cond_9

    array-length v0, p1

    if-nez v0, :cond_b

    :cond_9
    move-object v0, p1

    :goto_a
    return-object v0

    :cond_b
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B

    array-length v0, v1

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    array-length v0, p1

    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eq v0, v1, :cond_2a

    array-length v0, v1

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    :cond_2a
    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->isUrlSafe()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    array-length v2, v1

    if-ge v0, v2, :cond_3f

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    new-array v0, v0, [B

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_3f
    move-object v0, v1

    goto :goto_a
.end method

.method public encodeToString([B)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasData()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isUrlSafe()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method readResults([BII)I
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->avail()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eq v1, p1, :cond_26

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lt v1, v2, :cond_25

    iput-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    :cond_25
    :goto_25
    return v0

    :cond_26
    iput-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    goto :goto_25

    :cond_29
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_2f

    const/4 v0, -0x1

    goto :goto_25

    :cond_2f
    const/4 v0, 0x0

    goto :goto_25
.end method

.method setInitialBuffer([BII)V
    .registers 5

    if-eqz p1, :cond_b

    array-length v0, p1

    if-ne v0, p3, :cond_b

    iput-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iput p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iput p2, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    :cond_b
    return-void
.end method
