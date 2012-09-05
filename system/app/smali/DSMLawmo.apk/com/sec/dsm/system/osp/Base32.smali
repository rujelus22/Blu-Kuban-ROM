.class public Lcom/sec/dsm/system/osp/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/sec/dsm/system/osp/Base32;->ENCODE_TABLE:[B

    .line 35
    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/sec/dsm/system/osp/Base32;->DECODE_TABLE:[B

    return-void

    .line 25
    nop

    :array_14
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
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    .line 35
    :array_28
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
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0xfft
        0xfft
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
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B)[B
    .registers 14
    .parameter "in"

    .prologue
    const/4 v12, 0x4

    .line 55
    const/4 v5, 0x0

    .line 58
    .local v5, out:[B
    :try_start_2
    array-length v2, p0

    .line 59
    .local v2, inN:I
    add-int/lit8 v9, v2, 0x4

    div-int/lit8 v9, v9, 0x5

    mul-int/lit8 v9, v9, 0x5

    sub-int v7, v9, v2

    .line 60
    .local v7, padN:I
    add-int/lit8 v9, v2, 0x4

    add-int/lit8 v10, v2, 0x4

    rem-int/lit8 v10, v10, 0x5

    sub-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x8

    div-int/lit8 v6, v9, 0x5

    .line 62
    .local v6, outN:I
    new-array v5, v6, [B

    .line 64
    const/4 v9, 0x5

    new-array v8, v9, [B

    .line 65
    .local v8, temp:[B
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .line 66
    .local v3, j:I
    const/4 v1, 0x0

    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_1f
    add-int v9, v2, v7

    if-ge v1, v9, :cond_d5

    .line 67
    if-ge v1, v2, :cond_cb

    .line 68
    rem-int/lit8 v9, v1, 0x5

    aget-byte v10, p0, v1

    aput-byte v10, v8, v9

    .line 72
    :goto_2b
    rem-int/lit8 v9, v1, 0x5

    if-ne v9, v12, :cond_c5

    .line 73
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v9, Lcom/sec/dsm/system/osp/Base32;->ENCODE_TABLE:[B

    const/4 v10, 0x0

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x3

    and-int/lit8 v10, v10, 0x1f

    aget-byte v9, v9, v10

    aput-byte v9, v5, v4

    .line 74
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v9, Lcom/sec/dsm/system/osp/Base32;->ENCODE_TABLE:[B

    const/4 v10, 0x0

    aget-byte v10, v8, v10

    shl-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x1c

    const/4 v11, 0x1

    aget-byte v11, v8, v11

    shr-int/lit8 v11, v11, 0x6

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    aget-byte v9, v9, v10

    aput-byte v9, v5, v3

    .line 75
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v9, Lcom/sec/dsm/system/osp/Base32;->ENCODE_TABLE:[B

    const/4 v10, 0x1

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, 0x1f

    aget-byte v9, v9, v10

    aput-byte v9, v5, v4

    .line 76
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v9, Lcom/sec/dsm/system/osp/Base32;->ENCODE_TABLE:[B

    const/4 v10, 0x1

    aget-byte v10, v8, v10

    shl-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x10

    const/4 v11, 0x2

    aget-byte v11, v8, v11

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    aget-byte v9, v9, v10

    aput-byte v9, v5, v3

    .line 77
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v9, Lcom/sec/dsm/system/osp/Base32;->ENCODE_TABLE:[B

    const/4 v10, 0x2

    aget-byte v10, v8, v10

    shl-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, 0x1e

    const/4 v11, 0x3

    aget-byte v11, v8, v11

    shr-int/lit8 v11, v11, 0x7

    and-int/lit8 v11, v11, 0x1

    or-int/2addr v10, v11

    aget-byte v9, v9, v10

    aput-byte v9, v5, v4

    .line 78
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v9, Lcom/sec/dsm/system/osp/Base32;->ENCODE_TABLE:[B

    const/4 v10, 0x3

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x1f

    aget-byte v9, v9, v10

    aput-byte v9, v5, v3

    .line 79
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    sget-object v9, Lcom/sec/dsm/system/osp/Base32;->ENCODE_TABLE:[B

    const/4 v10, 0x3

    aget-byte v10, v8, v10

    shl-int/lit8 v10, v10, 0x3

    and-int/lit8 v10, v10, 0x18

    const/4 v11, 0x4

    aget-byte v11, v8, v11

    shr-int/lit8 v11, v11, 0x5

    and-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    aget-byte v9, v9, v10

    aput-byte v9, v5, v4

    .line 80
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    sget-object v9, Lcom/sec/dsm/system/osp/Base32;->ENCODE_TABLE:[B

    const/4 v10, 0x4

    aget-byte v10, v8, v10

    and-int/lit8 v10, v10, 0x1f

    aget-byte v9, v9, v10

    aput-byte v9, v5, v3

    :cond_c5
    move v3, v4

    .line 66
    .end local v4           #j:I
    .restart local v3       #j:I
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto/16 :goto_1f

    .line 70
    :cond_cb
    rem-int/lit8 v9, v1, 0x5

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    goto/16 :goto_2b

    .line 86
    .end local v1           #i:I
    .end local v2           #inN:I
    .end local v4           #j:I
    .end local v6           #outN:I
    .end local v7           #padN:I
    .end local v8           #temp:[B
    :catch_d2
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d4
    return-object v5

    .line 83
    .restart local v1       #i:I
    .restart local v2       #inN:I
    .restart local v4       #j:I
    .restart local v6       #outN:I
    .restart local v7       #padN:I
    .restart local v8       #temp:[B
    :cond_d5
    const/4 v1, 0x0

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    :goto_d7
    mul-int/lit8 v9, v7, 0x3

    div-int/lit8 v9, v9, 0x2

    if-ge v1, v9, :cond_d4

    .line 84
    add-int/lit8 v3, v3, -0x1

    const/16 v9, 0x3d

    aput-byte v9, v5, v3
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e3} :catch_d2

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_d7
.end method
