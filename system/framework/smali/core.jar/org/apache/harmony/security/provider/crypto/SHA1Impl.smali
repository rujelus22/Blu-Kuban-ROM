.class public Lorg/apache/harmony/security/provider/crypto/SHA1Impl;
.super Ljava/lang/Object;
.source "SHA1Impl.java"

# interfaces
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeHash([I)V
    .registers 16
    .parameter "arrW"

    .prologue
    const/16 v14, 0x55

    const/16 v13, 0x54

    const/16 v12, 0x53

    const/16 v11, 0x52

    const/16 v10, 0x50

    .line 76
    aget v0, p0, v11

    .line 77
    .local v0, a:I
    aget v1, p0, v12

    .line 78
    .local v1, b:I
    aget v2, p0, v13

    .line 79
    .local v2, c:I
    aget v3, p0, v14

    .line 80
    .local v3, d:I
    const/16 v7, 0x56

    aget v4, p0, v7

    .line 92
    .local v4, e:I
    const/16 v5, 0x10

    .local v5, t:I
    :goto_18
    if-ge v5, v10, :cond_38

    .line 94
    add-int/lit8 v7, v5, -0x3

    aget v7, p0, v7

    add-int/lit8 v8, v5, -0x8

    aget v8, p0, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v5, -0xe

    aget v8, p0, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v5, -0x10

    aget v8, p0, v8

    xor-int v6, v7, v8

    .line 95
    .local v6, temp:I
    shl-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v8, v6, 0x1f

    or-int/2addr v7, v8

    aput v7, p0, v5

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 98
    .end local v6           #temp:I
    :cond_38
    const/4 v5, 0x0

    :goto_39
    const/16 v7, 0x14

    if-ge v5, v7, :cond_5f

    .line 100
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    xor-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 103
    .restart local v6       #temp:I
    move v4, v3

    .line 104
    move v3, v2

    .line 105
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 106
    move v1, v0

    .line 107
    move v0, v6

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 109
    .end local v6           #temp:I
    :cond_5f
    const/16 v5, 0x14

    :goto_61
    const/16 v7, 0x28

    if-ge v5, v7, :cond_84

    .line 111
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 112
    .restart local v6       #temp:I
    move v4, v3

    .line 113
    move v3, v2

    .line 114
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 115
    move v1, v0

    .line 116
    move v0, v6

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 118
    .end local v6           #temp:I
    :cond_84
    const/16 v5, 0x28

    :goto_86
    const/16 v7, 0x3c

    if-ge v5, v7, :cond_ae

    .line 120
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    and-int v8, v1, v2

    and-int v9, v1, v3

    or-int/2addr v8, v9

    and-int v9, v2, v3

    or-int/2addr v8, v9

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, -0x70e44324

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 122
    .restart local v6       #temp:I
    move v4, v3

    .line 123
    move v3, v2

    .line 124
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 125
    move v1, v0

    .line 126
    move v0, v6

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    .line 128
    .end local v6           #temp:I
    :cond_ae
    const/16 v5, 0x3c

    :goto_b0
    if-ge v5, v10, :cond_d1

    .line 130
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v1, v2

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v8, p0, v5

    add-int/2addr v8, v4

    const v9, -0x359d3e2a

    add-int/2addr v8, v9

    add-int v6, v7, v8

    .line 131
    .restart local v6       #temp:I
    move v4, v3

    .line 132
    move v3, v2

    .line 133
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v2, v7, v8

    .line 134
    move v1, v0

    .line 135
    move v0, v6

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto :goto_b0

    .line 138
    .end local v6           #temp:I
    :cond_d1
    aget v7, p0, v11

    add-int/2addr v7, v0

    aput v7, p0, v11

    .line 139
    aget v7, p0, v12

    add-int/2addr v7, v1

    aput v7, p0, v12

    .line 140
    aget v7, p0, v13

    add-int/2addr v7, v2

    aput v7, p0, v13

    .line 141
    aget v7, p0, v14

    add-int/2addr v7, v3

    aput v7, p0, v14

    .line 142
    const/16 v7, 0x56

    aget v8, p0, v7

    add-int/2addr v8, v4

    aput v8, p0, v7

    .line 143
    return-void
.end method

.method static updateHash([I[BII)V
    .registers 15
    .parameter "intArray"
    .parameter "byteInput"
    .parameter "fromByte"
    .parameter "toByte"

    .prologue
    .line 174
    const/16 v8, 0x51

    aget v2, p0, v8

    .line 175
    .local v2, index:I
    move v1, p2

    .line 179
    .local v1, i:I
    shr-int/lit8 v7, v2, 0x2

    .line 180
    .local v7, wordIndex:I
    and-int/lit8 v0, v2, 0x3

    .line 182
    .local v0, byteIndex:I
    const/16 v8, 0x51

    add-int v9, v2, p3

    sub-int/2addr v9, p2

    add-int/lit8 v9, v9, 0x1

    and-int/lit8 v9, v9, 0x3f

    aput v9, p0, v8

    .line 189
    if-eqz v0, :cond_3e

    .line 191
    :goto_16
    if-gt v1, p3, :cond_2e

    const/4 v8, 0x4

    if-ge v0, v8, :cond_2e

    .line 192
    aget v8, p0, v7

    aget-byte v9, p1, v1

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x3

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, p0, v7

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 195
    :cond_2e
    const/4 v8, 0x4

    if-ne v0, v8, :cond_3b

    .line 196
    add-int/lit8 v7, v7, 0x1

    .line 197
    const/16 v8, 0x10

    if-ne v7, v8, :cond_3b

    .line 199
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 200
    const/4 v7, 0x0

    .line 203
    :cond_3b
    if-le v1, p3, :cond_3e

    .line 244
    :cond_3d
    :goto_3d
    return-void

    .line 210
    :cond_3e
    sub-int v8, p3, v1

    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v4, v8, 0x2

    .line 211
    .local v4, maxWord:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_45
    if-ge v3, v4, :cond_78

    .line 213
    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v1, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, p0, v7

    .line 217
    add-int/lit8 v1, v1, 0x4

    .line 218
    add-int/lit8 v7, v7, 0x1

    .line 220
    const/16 v8, 0x10

    if-ge v7, v8, :cond_73

    .line 211
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 223
    :cond_73
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 224
    const/4 v7, 0x0

    goto :goto_70

    .line 230
    :cond_78
    sub-int v8, p3, v1

    add-int/lit8 v5, v8, 0x1

    .line 231
    .local v5, nBytes:I
    if-eqz v5, :cond_3d

    .line 233
    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v6, v8, 0x18

    .line 235
    .local v6, w:I
    const/4 v8, 0x1

    if-eq v5, v8, :cond_9c

    .line 236
    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v6, v8

    .line 237
    const/4 v8, 0x2

    if-eq v5, v8, :cond_9c

    .line 238
    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    .line 241
    :cond_9c
    aput v6, p0, v7

    goto :goto_3d
.end method
