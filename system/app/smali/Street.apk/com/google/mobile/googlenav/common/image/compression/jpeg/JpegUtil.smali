.class public Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegUtil;
.super Ljava/lang/Object;


# static fields
.field private static final JPEG_QUANT_TABLES:[[B

.field private static final imageIoScaleFactor:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x40

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegUtil;->JPEG_QUANT_TABLES:[[B

    const/16 v0, 0x65

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegUtil;->imageIoScaleFactor:[I

    return-void

    nop

    :array_22
    .array-data 0x1
        0x10t
        0xbt
        0xct
        0xet
        0xct
        0xat
        0x10t
        0xet
        0xdt
        0xet
        0x12t
        0x11t
        0x10t
        0x13t
        0x18t
        0x28t
        0x1at
        0x18t
        0x16t
        0x16t
        0x18t
        0x31t
        0x23t
        0x25t
        0x1dt
        0x28t
        0x3at
        0x33t
        0x3dt
        0x3ct
        0x39t
        0x33t
        0x38t
        0x37t
        0x40t
        0x48t
        0x5ct
        0x4et
        0x40t
        0x44t
        0x57t
        0x45t
        0x37t
        0x38t
        0x50t
        0x6dt
        0x51t
        0x57t
        0x5ft
        0x62t
        0x67t
        0x68t
        0x67t
        0x3et
        0x4dt
        0x71t
        0x79t
        0x70t
        0x64t
        0x78t
        0x5ct
        0x65t
        0x67t
        0x63t
    .end array-data

    :array_46
    .array-data 0x1
        0x11t
        0x12t
        0x12t
        0x18t
        0x15t
        0x18t
        0x2ft
        0x1at
        0x1at
        0x2ft
        0x63t
        0x42t
        0x38t
        0x42t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
    .end array-data

    :array_6a
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x64t
        0x1t 0x0t 0x0t 0x32t
        0x81t 0x55t 0x55t 0x21t
        0x1t 0x0t 0x0t 0x19t
        0x1t 0x0t 0x0t 0x14t
        0xc1t 0xaat 0xaat 0x10t
        0x91t 0x24t 0x49t 0xet
        0x1t 0x0t 0x80t 0xct
        0xc1t 0x71t 0x1ct 0xbt
        0x1t 0x0t 0x0t 0xat
        0xd1t 0x45t 0x17t 0x9t
        0x61t 0x55t 0x55t 0x8t
        0x19t 0x3bt 0xb1t 0x7t
        0x49t 0x92t 0x24t 0x7t
        0xa9t 0xaat 0xaat 0x6t
        0x1t 0x0t 0x40t 0x6t
        0xe1t 0xe1t 0xe1t 0x5t
        0xe1t 0x38t 0x8et 0x5t
        0x51t 0x5et 0x43t 0x5t
        0x1t 0x0t 0x0t 0x5t
        0x31t 0xct 0xc3t 0x4t
        0xe9t 0xa2t 0x8bt 0x4t
        0x21t 0xbt 0x59t 0x4t
        0xb1t 0xaat 0x2at 0x4t
        0x1t 0x0t 0x0t 0x4t
        0x8dt 0x9dt 0xd8t 0x3t
        0xedt 0x25t 0xb4t 0x3t
        0x25t 0x49t 0x92t 0x3t
        0x39t 0xc2t 0x72t 0x3t
        0x55t 0x55t 0x55t 0x3t
        0x75t 0xcet 0x39t 0x3t
        0x1t 0x0t 0x20t 0x3t
        0xf1t 0xc1t 0x7t 0x3t
        0xf1t 0xf0t 0xf0t 0x2t
        0xb9t 0x6dt 0xdbt 0x2t
        0x71t 0x1ct 0xc7t 0x2t
        0x55t 0xe4t 0xb3t 0x2t
        0x29t 0xaft 0xa1t 0x2t
        0x9t 0x69t 0x90t 0x2t
        0x1t 0x0t 0x80t 0x2t
        0xe9t 0x63t 0x70t 0x2t
        0x19t 0x86t 0x61t 0x2t
        0x4dt 0x59t 0x53t 0x2t
        0x75t 0xd1t 0x45t 0x2t
        0x91t 0xe3t 0x38t 0x2t
        0x91t 0x85t 0x2ct 0x2t
        0x4dt 0xaet 0x20t 0x2t
        0x59t 0x55t 0x15t 0x2t
        0xf1t 0x72t 0xat 0x2t
        0x1t 0x0t 0x0t 0x2t
        0x91t 0xc2t 0xf5t 0x1t
        0x21t 0x85t 0xebt 0x1t
        0xb1t 0x47t 0xe1t 0x1t
        0x3dt 0xat 0xd7t 0x1t
        0xcdt 0xcct 0xcct 0x1t
        0x5dt 0x8ft 0xc2t 0x1t
        0xedt 0x51t 0xb8t 0x1t
        0x7dt 0x14t 0xaet 0x1t
        0xdt 0xd7t 0xa3t 0x1t
        0x99t 0x99t 0x99t 0x1t
        0x29t 0x5ct 0x8ft 0x1t
        0xb9t 0x1et 0x85t 0x1t
        0x49t 0xe1t 0x7at 0x1t
        0xd9t 0xa3t 0x70t 0x1t
        0x69t 0x66t 0x66t 0x1t
        0xf5t 0x28t 0x5ct 0x1t
        0x85t 0xebt 0x51t 0x1t
        0x15t 0xaet 0x47t 0x1t
        0xa5t 0x70t 0x3dt 0x1t
        0x35t 0x33t 0x33t 0x1t
        0xc5t 0xf5t 0x28t 0x1t
        0x51t 0xb8t 0x1et 0x1t
        0xe1t 0x7at 0x14t 0x1t
        0x71t 0x3dt 0xat 0x1t
        0x1t 0x0t 0x0t 0x1t
        0x91t 0xc2t 0xf5t 0x0t
        0x21t 0x85t 0xebt 0x0t
        0xb1t 0x47t 0xe1t 0x0t
        0x3dt 0xat 0xd7t 0x0t
        0xcdt 0xcct 0xcct 0x0t
        0x5dt 0x8ft 0xc2t 0x0t
        0xedt 0x51t 0xb8t 0x0t
        0x7dt 0x14t 0xaet 0x0t
        0xdt 0xd7t 0xa3t 0x0t
        0x99t 0x99t 0x99t 0x0t
        0x29t 0x5ct 0x8ft 0x0t
        0xb9t 0x1et 0x85t 0x0t
        0x49t 0xe1t 0x7at 0x0t
        0xd9t 0xa3t 0x70t 0x0t
        0x69t 0x66t 0x66t 0x0t
        0xf5t 0x28t 0x5ct 0x0t
        0x85t 0xebt 0x51t 0x0t
        0x15t 0xaet 0x47t 0x0t
        0xa5t 0x70t 0x3dt 0x0t
        0x35t 0x33t 0x33t 0x0t
        0xc5t 0xf5t 0x28t 0x0t
        0x51t 0xb8t 0x1et 0x0t
        0xe1t 0x7at 0x14t 0x0t
        0x71t 0x3dt 0xat 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getQuantTable(III)[B
    .registers 9

    const/16 v5, 0x40

    const-class v0, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegUtil;

    monitor-enter v0

    mul-int/lit16 v1, p0, 0x9a

    mul-int/lit8 v2, p2, 0x4d

    add-int/2addr v1, v2

    const/16 v2, 0x18

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    const/16 v1, 0x40

    :try_start_11
    new-array v1, v1, [B

    sget-object v2, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegUtil;->JPEG_QUANT_TABLES:[[B

    aget-object v2, v2, p0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v5, :cond_27

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4, p1, p2}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegUtil;->getScaledQuantizationFactor(III)B

    move-result v4

    aput-byte v4, v1, v3
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_29

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_27
    monitor-exit v0

    return-object v1

    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getScaledQuantizationFactor(III)B
    .registers 9

    const/16 v1, 0x1388

    const/16 v5, 0xff

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_52

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "qualityAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    const/16 v0, 0x63

    if-ne p0, v0, :cond_1f

    const/16 v0, 0x24

    if-ne p1, v0, :cond_1f

    const/16 v0, 0x8a

    :goto_1a
    if-ge v0, v4, :cond_4d

    move v0, v4

    :cond_1d
    :goto_1d
    int-to-byte v0, v0

    return v0

    :cond_1f
    int-to-long v0, p0

    sget-object v2, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegUtil;->imageIoScaleFactor:[I

    aget v2, v2, p1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x1000000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_1a

    :pswitch_32
    const/16 v0, 0x32

    if-ge p1, v0, :cond_42

    div-int v0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3c
    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x32

    div-int/lit8 v0, v0, 0x64

    goto :goto_1a

    :cond_42
    const/16 v0, 0xc8

    mul-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3c

    :cond_4d
    if-le v0, v5, :cond_1d

    move v0, v5

    goto :goto_1d

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_10
        :pswitch_32
    .end packed-switch
.end method

.method static prependStandardHeader([BII[BILcom/google/mobile/googlenav/common/image/compression/jpeg/JpegHeaderParams;)V
    .registers 13

    invoke-virtual {p5}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegHeaderParams;->getVariant()I

    move-result v2

    invoke-virtual {p5}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegHeaderParams;->getWidth()I

    move-result v3

    invoke-virtual {p5}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegHeaderParams;->getHeight()I

    move-result v4

    invoke-virtual {p5}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegHeaderParams;->getQuality()I

    move-result v5

    invoke-virtual {p5}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegHeaderParams;->getQualityAlgorithm()I

    move-result v6

    if-eqz v2, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-static {v2}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/GenerateJpegHeader;->getHeaderLength(I)I

    move-result v0

    add-int/2addr v0, p4

    invoke-static {p0, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p3

    move v1, p4

    invoke-static/range {v0 .. v6}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/GenerateJpegHeader;->generate([BIIIIII)I

    return-void
.end method

.method public static uncompactJpeg([B)[B
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegUtil;->uncompactJpeg([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static uncompactJpeg([BII)[B
    .registers 13

    const/16 v9, 0xb

    const/4 v8, 0x0

    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const/16 v1, -0x28

    if-ne v0, v1, :cond_16

    new-array v0, p2, [B

    invoke-static {p0, p1, v0, v8, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_15
    return-object v0

    :cond_16
    aget-byte v0, p0, p1

    const/16 v1, 0x43

    if-ne v0, v1, :cond_34

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_34

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_34

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_3c

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input is not in compact JPEG format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v1, v0, 0xff

    add-int/lit8 v0, p1, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, p1, 0x8

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v0

    add-int/lit8 v0, p1, 0x9

    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    add-int/lit8 v0, p1, 0xa

    aget-byte v0, p0, v0

    and-int/lit16 v5, v0, 0xff

    :try_start_6c
    invoke-static {v1}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/GenerateJpegHeader;->getHeaderLength(I)I
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6c .. :try_end_6f} :catch_87

    move-result v6

    add-int v0, v6, p2

    sub-int/2addr v0, v9

    new-array v7, v0, [B

    new-instance v0, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegHeaderParams;

    invoke-direct/range {v0 .. v6}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegHeaderParams;-><init>(IIIIII)V

    add-int/lit8 v2, p1, 0xb

    sub-int v3, p2, v9

    move-object v1, p0

    move-object v4, v7

    move v5, v8

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/google/mobile/googlenav/common/image/compression/jpeg/JpegUtil;->prependStandardHeader([BII[BILcom/google/mobile/googlenav/common/image/compression/jpeg/JpegHeaderParams;)V

    move-object v0, v7

    goto :goto_15

    :catch_87
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown variant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
