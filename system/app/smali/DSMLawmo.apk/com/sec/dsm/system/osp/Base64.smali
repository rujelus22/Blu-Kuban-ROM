.class public Lcom/sec/dsm/system/osp/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x40

    .line 25
    new-array v0, v1, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/sec/dsm/system/osp/Base64;->ENCODE_TABLE:[B

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/sec/dsm/system/osp/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 51
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_62

    sput-object v0, Lcom/sec/dsm/system/osp/Base64;->DECODE_TABLE:[B

    return-void

    .line 25
    :array_1a
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

    .line 38
    :array_3e
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

    .line 51
    :array_62
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
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctInput([B)[B
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 169
    .local v2, in2:[B
    :try_start_1
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x4

    rsub-int/lit8 v4, v5, 0x4

    .line 170
    .local v4, padN:I
    array-length v5, p0

    add-int/2addr v5, v4

    new-array v2, v5, [B

    .line 171
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p0

    invoke-static {p0, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    array-length v3, v2

    .line 173
    .local v3, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v4, :cond_22

    .line 174
    add-int/lit8 v3, v3, -0x1

    const/16 v5, 0x3d

    aput-byte v5, v2, v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1d

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 176
    .end local v1           #i:I
    .end local v3           #j:I
    .end local v4           #padN:I
    :catch_1d
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    throw v0

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v3       #j:I
    .restart local v4       #padN:I
    :cond_22
    return-object v2
.end method

.method public static decode([B)[B
    .registers 15
    .parameter "in"

    .prologue
    const/16 v13, 0x3d

    const/4 v12, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 191
    const/4 v5, 0x0

    .line 194
    .local v5, out:[B
    :try_start_7
    array-length v11, p0

    if-nez v11, :cond_e

    .line 195
    const/4 v9, 0x0

    new-array v9, v9, [B

    .line 228
    :goto_d
    return-object v9

    .line 197
    :cond_e
    array-length v11, p0

    rem-int/lit8 v11, v11, 0x4

    if-ne v11, v9, :cond_1f

    .line 198
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "Input length is invalid."

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 224
    :catch_1b
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1d
    move-object v9, v5

    .line 228
    goto :goto_d

    .line 200
    :cond_1f
    array-length v11, p0

    rem-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_28

    .line 201
    invoke-static {p0}, Lcom/sec/dsm/system/osp/Base64;->correctInput([B)[B

    move-result-object p0

    .line 204
    :cond_28
    array-length v2, p0

    .line 205
    .local v2, inN:I
    add-int/lit8 v11, v2, -0x2

    aget-byte v11, p0, v11

    if-ne v11, v13, :cond_90

    .line 206
    .local v7, padN:I
    :goto_2f
    mul-int/lit8 v9, v2, 0x3

    div-int/lit8 v9, v9, 0x4

    sub-int v6, v9, v7

    .line 208
    .local v6, outN:I
    new-array v5, v6, [B

    .line 210
    const/4 v9, 0x4

    new-array v8, v9, [B

    .line 211
    .local v8, temp:[B
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .line 212
    .local v3, j:I
    const/4 v1, 0x0

    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_3e
    if-ge v1, v2, :cond_1d

    .line 213
    rem-int/lit8 v9, v1, 0x4

    sget-object v10, Lcom/sec/dsm/system/osp/Base64;->DECODE_TABLE:[B

    aget-byte v11, p0, v1

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    .line 214
    rem-int/lit8 v9, v1, 0x4

    if-ne v9, v12, :cond_9a

    .line 215
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    const/4 v9, 0x0

    aget-byte v9, v8, v9

    shl-int/lit8 v9, v9, 0x2

    and-int/lit16 v9, v9, 0xfc

    const/4 v10, 0x1

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    .line 216
    if-ge v3, v6, :cond_9c

    .line 217
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/4 v9, 0x1

    aget-byte v9, v8, v9

    shl-int/lit8 v9, v9, 0x4

    and-int/lit16 v9, v9, 0xf0

    const/4 v10, 0x2

    aget-byte v10, v8, v10

    shr-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    .line 219
    :goto_78
    if-ge v4, v6, :cond_9a

    .line 220
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    const/4 v9, 0x2

    aget-byte v9, v8, v9

    shl-int/lit8 v9, v9, 0x6

    and-int/lit16 v9, v9, 0xc0

    const/4 v10, 0x3

    aget-byte v10, v8, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    .line 212
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_3e

    .line 205
    .end local v1           #i:I
    .end local v4           #j:I
    .end local v6           #outN:I
    .end local v7           #padN:I
    .end local v8           #temp:[B
    :cond_90
    add-int/lit8 v11, v2, -0x1

    aget-byte v11, p0, v11
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_94} :catch_1b

    if-ne v11, v13, :cond_98

    move v7, v9

    goto :goto_2f

    :cond_98
    move v7, v10

    goto :goto_2f

    .restart local v1       #i:I
    .restart local v4       #j:I
    .restart local v6       #outN:I
    .restart local v7       #padN:I
    .restart local v8       #temp:[B
    :cond_9a
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_8c

    :cond_9c
    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_78
.end method

.method public static encode([B)[B
    .registers 2
    .parameter "in"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/dsm/system/osp/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BZ)[B
    .registers 15
    .parameter "in"
    .parameter "urlSafe"

    .prologue
    const/4 v12, 0x2

    .line 85
    const/4 v6, 0x0

    .line 88
    .local v6, out:[B
    if-eqz p1, :cond_7a

    :try_start_4
    sget-object v1, Lcom/sec/dsm/system/osp/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 90
    .local v1, encodeTable:[B
    :goto_6
    array-length v3, p0

    .line 91
    .local v3, inN:I
    add-int/lit8 v10, v3, 0x2

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x3

    sub-int v8, v10, v3

    .line 92
    .local v8, padN:I
    add-int/lit8 v10, v3, 0x2

    add-int/lit8 v11, v3, 0x2

    rem-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x4

    div-int/lit8 v7, v10, 0x3

    .line 94
    .local v7, outN:I
    new-array v6, v7, [B

    .line 96
    const/4 v10, 0x3

    new-array v9, v10, [B

    .line 97
    .local v9, temp:[B
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v4, 0x0

    .line 98
    .local v4, j:I
    const/4 v2, 0x0

    move v5, v4

    .end local v4           #j:I
    .local v5, j:I
    :goto_23
    add-int v10, v3, v8

    if-ge v2, v10, :cond_86

    .line 99
    if-ge v2, v3, :cond_7d

    .line 100
    rem-int/lit8 v10, v2, 0x3

    aget-byte v11, p0, v2

    aput-byte v11, v9, v10

    .line 104
    :goto_2f
    rem-int/lit8 v10, v2, 0x3

    if-ne v10, v12, :cond_75

    .line 105
    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    shr-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v6, v5

    .line 106
    add-int/lit8 v5, v4, 0x1

    .end local v4           #j:I
    .restart local v5       #j:I
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    shl-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x30

    const/4 v11, 0x1

    aget-byte v11, v9, v11

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    aget-byte v10, v1, v10

    aput-byte v10, v6, v4

    .line 107
    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    const/4 v10, 0x1

    aget-byte v10, v9, v10

    shl-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x3c

    const/4 v11, 0x2

    aget-byte v11, v9, v11

    shr-int/lit8 v11, v11, 0x6

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    aget-byte v10, v1, v10

    aput-byte v10, v6, v5

    .line 108
    add-int/lit8 v5, v4, 0x1

    .end local v4           #j:I
    .restart local v5       #j:I
    const/4 v10, 0x2

    aget-byte v10, v9, v10

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v6, v4

    :cond_75
    move v4, v5

    .line 98
    .end local v5           #j:I
    .restart local v4       #j:I
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_23

    .line 88
    .end local v1           #encodeTable:[B
    .end local v2           #i:I
    .end local v3           #inN:I
    .end local v5           #j:I
    .end local v7           #outN:I
    .end local v8           #padN:I
    .end local v9           #temp:[B
    :cond_7a
    sget-object v1, Lcom/sec/dsm/system/osp/Base64;->ENCODE_TABLE:[B

    goto :goto_6

    .line 102
    .restart local v1       #encodeTable:[B
    .restart local v2       #i:I
    .restart local v3       #inN:I
    .restart local v5       #j:I
    .restart local v7       #outN:I
    .restart local v8       #padN:I
    .restart local v9       #temp:[B
    :cond_7d
    rem-int/lit8 v10, v2, 0x3

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    goto :goto_2f

    .line 114
    .end local v1           #encodeTable:[B
    .end local v2           #i:I
    .end local v3           #inN:I
    .end local v5           #j:I
    .end local v7           #outN:I
    .end local v8           #padN:I
    .end local v9           #temp:[B
    :catch_83
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    :cond_85
    return-object v6

    .line 111
    .restart local v1       #encodeTable:[B
    .restart local v2       #i:I
    .restart local v3       #inN:I
    .restart local v5       #j:I
    .restart local v7       #outN:I
    .restart local v8       #padN:I
    .restart local v9       #temp:[B
    :cond_86
    const/4 v2, 0x0

    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    :goto_88
    if-ge v2, v8, :cond_85

    .line 112
    add-int/lit8 v4, v4, -0x1

    const/16 v10, 0x3d

    aput-byte v10, v6, v4
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_90} :catch_83

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_88
.end method
