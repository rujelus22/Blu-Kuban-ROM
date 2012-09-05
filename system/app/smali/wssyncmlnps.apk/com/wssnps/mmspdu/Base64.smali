.class public Lcom/wssnps/mmspdu/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static base64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xff

    .line 38
    new-array v1, v3, [B

    sput-object v1, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v3, :cond_11

    .line 43
    sget-object v1, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 45
    :cond_11
    const/16 v0, 0x5a

    :goto_13
    const/16 v1, 0x41

    if-lt v0, v1, :cond_21

    .line 46
    sget-object v1, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 48
    :cond_21
    const/16 v0, 0x7a

    :goto_23
    const/16 v1, 0x61

    if-lt v0, v1, :cond_33

    .line 49
    sget-object v1, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 51
    :cond_33
    const/16 v0, 0x39

    :goto_35
    const/16 v1, 0x30

    if-lt v0, v1, :cond_45

    .line 52
    sget-object v1, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 55
    :cond_45
    sget-object v1, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 56
    sget-object v1, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .registers 16
    .parameter "base64Data"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/wssnps/mmspdu/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 70
    array-length v12, p0

    if-nez v12, :cond_b

    .line 71
    const/4 v12, 0x0

    new-array v5, v12, [B

    .line 124
    :cond_a
    :goto_a
    return-object v5

    .line 74
    :cond_b
    array-length v12, p0

    div-int/lit8 v11, v12, 0x4

    .line 75
    .local v11, numberQuadruple:I
    const/4 v5, 0x0

    .line 76
    .local v5, decodedData:[B
    const/4 v0, 0x0

    .local v0, b1:B
    const/4 v1, 0x0

    .local v1, b2:B
    const/4 v2, 0x0

    .local v2, b3:B
    const/4 v3, 0x0

    .local v3, b4:B
    const/4 v9, 0x0

    .local v9, marker0:B
    const/4 v10, 0x0

    .line 80
    .local v10, marker1:B
    const/4 v6, 0x0

    .line 81
    .local v6, encodedIndex:I
    const/4 v4, 0x0

    .line 84
    .local v4, dataIndex:I
    array-length v8, p0

    .line 86
    .local v8, lastData:I
    :cond_18
    add-int/lit8 v12, v8, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_28

    .line 87
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_18

    .line 88
    const/4 v12, 0x0

    new-array v5, v12, [B

    goto :goto_a

    .line 91
    :cond_28
    sub-int v12, v8, v11

    new-array v5, v12, [B

    .line 94
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2d
    if-ge v7, v11, :cond_a

    .line 95
    mul-int/lit8 v4, v7, 0x4

    .line 96
    add-int/lit8 v12, v4, 0x2

    aget-byte v9, p0, v12

    .line 97
    add-int/lit8 v12, v4, 0x3

    aget-byte v10, p0, v12

    .line 99
    sget-object v12, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    aget-byte v13, p0, v4

    aget-byte v0, v12, v13

    .line 100
    sget-object v12, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v13, p0, v13

    aget-byte v1, v12, v13

    .line 102
    const/16 v12, 0x3d

    if-eq v9, v12, :cond_7a

    const/16 v12, 0x3d

    if-eq v10, v12, :cond_7a

    .line 104
    sget-object v12, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 105
    sget-object v12, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    aget-byte v3, v12, v10

    .line 107
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 108
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 110
    add-int/lit8 v12, v6, 0x2

    shl-int/lit8 v13, v2, 0x6

    or-int/2addr v13, v3

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 122
    :cond_75
    :goto_75
    add-int/lit8 v6, v6, 0x3

    .line 94
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 111
    :cond_7a
    const/16 v12, 0x3d

    if-ne v9, v12, :cond_87

    .line 113
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    goto :goto_75

    .line 114
    :cond_87
    const/16 v12, 0x3d

    if-ne v10, v12, :cond_75

    .line 116
    sget-object v12, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 118
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 119
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    goto :goto_75
.end method

.method static discardNonBase64([B)[B
    .registers 8
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 153
    array-length v5, p0

    new-array v2, v5, [B

    .line 154
    .local v2, groomedData:[B
    const/4 v0, 0x0

    .line 156
    .local v0, bytesCopied:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    array-length v5, p0

    if-ge v3, v5, :cond_1b

    .line 157
    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/wssnps/mmspdu/Base64;->isBase64(B)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 158
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 156
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 162
    :cond_1b
    new-array v4, v0, [B

    .line 164
    .local v4, packedData:[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    return-object v4
.end method

.method private static isBase64(B)Z
    .registers 4
    .parameter "octect"

    .prologue
    const/4 v0, 0x1

    .line 134
    const/16 v1, 0x3d

    if-ne p0, v1, :cond_6

    .line 139
    :cond_5
    :goto_5
    return v0

    .line 136
    :cond_6
    sget-object v1, Lcom/wssnps/mmspdu/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 137
    const/4 v0, 0x0

    goto :goto_5
.end method
