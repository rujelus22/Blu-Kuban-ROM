.class public Lorg/columba/ristretto/coder/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static dtable:[B

.field private static final etable:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lorg/columba/ristretto/coder/Base64;->etable:[C

    .line 66
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_58

    sput-object v0, Lorg/columba/ristretto/coder/Base64;->dtable:[B

    return-void

    .line 54
    nop

    :array_14
    .array-data 0x2
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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
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
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data

    .line 66
    :array_58
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3et
        0x0t
        0x0t
        0x0t
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
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
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
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
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
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;
    .registers 15
    .parameter "input"

    .prologue
    .line 137
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe8

    mul-double/2addr v10, v12

    double-to-int v9, v10

    .line 139
    .local v9, size:I
    new-array v2, v9, [B

    .line 140
    .local v2, outBytes:[B
    const/4 v10, 0x4

    new-array v5, v10, [B

    .line 141
    .local v5, pack:[B
    const/4 v3, 0x0

    .line 142
    .local v3, outPos:I
    const/4 v6, 0x0

    .line 143
    .local v6, packSize:I
    const/4 v8, 0x0

    .line 147
    .local v8, pads:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v1, v10, :cond_83

    .line 148
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 149
    .local v0, current:C
    const/16 v10, 0xd

    if-eq v0, v10, :cond_30

    const/16 v10, 0xa

    if-eq v0, v10, :cond_30

    .line 150
    add-int/lit8 v7, v6, 0x1

    .end local v6           #packSize:I
    .local v7, packSize:I
    int-to-byte v10, v0

    aput-byte v10, v5, v6

    .line 151
    const/16 v10, 0x3d

    if-ne v0, v10, :cond_8e

    .line 152
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .line 155
    .end local v7           #packSize:I
    .restart local v6       #packSize:I
    :cond_30
    :goto_30
    const/4 v10, 0x4

    if-ne v6, v10, :cond_89

    .line 156
    add-int/lit8 v4, v3, 0x1

    .end local v3           #outPos:I
    .local v4, outPos:I
    sget-object v10, Lorg/columba/ristretto/coder/Base64;->dtable:[B

    const/4 v11, 0x0

    aget-byte v11, v5, v11

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x2

    sget-object v11, Lorg/columba/ristretto/coder/Base64;->dtable:[B

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    aget-byte v11, v11, v12

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v3

    .line 158
    const/4 v10, 0x2

    if-ge v8, v10, :cond_67

    .line 159
    add-int/lit8 v3, v4, 0x1

    .end local v4           #outPos:I
    .restart local v3       #outPos:I
    sget-object v10, Lorg/columba/ristretto/coder/Base64;->dtable:[B

    const/4 v11, 0x1

    aget-byte v11, v5, v11

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x4

    sget-object v11, Lorg/columba/ristretto/coder/Base64;->dtable:[B

    const/4 v12, 0x2

    aget-byte v12, v5, v12

    aget-byte v11, v11, v12

    shr-int/lit8 v11, v11, 0x2

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v4

    move v4, v3

    .line 161
    .end local v3           #outPos:I
    .restart local v4       #outPos:I
    :cond_67
    const/4 v10, 0x1

    if-ge v8, v10, :cond_8c

    .line 162
    add-int/lit8 v3, v4, 0x1

    .end local v4           #outPos:I
    .restart local v3       #outPos:I
    sget-object v10, Lorg/columba/ristretto/coder/Base64;->dtable:[B

    const/4 v11, 0x2

    aget-byte v11, v5, v11

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x6

    sget-object v11, Lorg/columba/ristretto/coder/Base64;->dtable:[B

    const/4 v12, 0x3

    aget-byte v12, v5, v12

    aget-byte v11, v11, v12

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v4

    .line 164
    :goto_80
    const/4 v6, 0x0

    .line 165
    if-eqz v8, :cond_89

    .line 170
    .end local v0           #current:C
    :cond_83
    const/4 v10, 0x0

    invoke-static {v2, v10, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    return-object v10

    .line 147
    .restart local v0       #current:C
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .end local v3           #outPos:I
    .restart local v4       #outPos:I
    :cond_8c
    move v3, v4

    .end local v4           #outPos:I
    .restart local v3       #outPos:I
    goto :goto_80

    .end local v6           #packSize:I
    .restart local v7       #packSize:I
    :cond_8e
    move v6, v7

    .end local v7           #packSize:I
    .restart local v6       #packSize:I
    goto :goto_30
.end method

.method public static decodeToArray(Ljava/lang/CharSequence;)[B
    .registers 6
    .parameter "input"

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-static {p0}, Lorg/columba/ristretto/coder/Base64;->decode(Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 181
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 186
    :goto_13
    return-object v1

    .line 184
    :cond_14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 185
    .local v1, result:[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "input"

    .prologue
    .line 248
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 249
    .local v1, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 250
    .local v0, bytes:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lorg/columba/ristretto/coder/Base64;->encode(Ljava/nio/ByteBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static encode(Ljava/nio/ByteBuffer;)Ljava/lang/StringBuffer;
    .registers 2
    .parameter "buffer"

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/columba/ristretto/coder/Base64;->encode(Ljava/nio/ByteBuffer;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/nio/ByteBuffer;Z)Ljava/lang/StringBuffer;
    .registers 12
    .parameter "input"
    .parameter "wrap"

    .prologue
    const/16 v9, 0x3d

    .line 199
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    rem-int/lit8 v2, v5, 0x3

    .line 200
    .local v2, lastPackSize:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x3ff553f7ced91687L

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v5, v5

    add-int/lit8 v0, v5, 0x2

    .line 201
    .local v0, estimatedEncodedSize:I
    new-instance v4, Ljava/lang/StringBuffer;

    div-int/lit8 v5, v0, 0x4c

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 202
    .local v4, result:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 206
    .local v3, packsPerLine:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v1, v5, :cond_95

    .line 207
    sget-object v5, Lorg/columba/ristretto/coder/Base64;->etable:[C

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    sget-object v5, Lorg/columba/ristretto/coder/Base64;->etable:[C

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    sget-object v5, Lorg/columba/ristretto/coder/Base64;->etable:[C

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    add-int/lit8 v7, v1, 0x2

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    sget-object v5, Lorg/columba/ristretto/coder/Base64;->etable:[C

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    add-int/lit8 v3, v3, 0x1

    .line 214
    const/16 v5, 0x19

    if-ne v3, v5, :cond_92

    if-eqz p1, :cond_92

    .line 215
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const/4 v3, 0x0

    .line 206
    :cond_92
    add-int/lit8 v1, v1, 0x3

    goto :goto_25

    .line 221
    :cond_95
    const/4 v5, 0x2

    if-ne v2, v5, :cond_d8

    .line 222
    sget-object v5, Lorg/columba/ristretto/coder/Base64;->etable:[C

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    sget-object v5, Lorg/columba/ristretto/coder/Base64;->etable:[C

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    sget-object v5, Lorg/columba/ristretto/coder/Base64;->etable:[C

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    :cond_d8
    const/4 v5, 0x1

    if-ne v2, v5, :cond_101

    .line 229
    sget-object v5, Lorg/columba/ristretto/coder/Base64;->etable:[C

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    sget-object v5, Lorg/columba/ristretto/coder/Base64;->etable:[C

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    :cond_101
    return-object v4
.end method
