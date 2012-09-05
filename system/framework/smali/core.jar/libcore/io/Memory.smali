.class public final Llibcore/io/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V
.end method

.method public static native peekByte(I)B
.end method

.method public static native peekByteArray(I[BII)V
.end method

.method public static native peekCharArray(I[CIIZ)V
.end method

.method public static native peekDoubleArray(I[DIIZ)V
.end method

.method public static native peekFloatArray(I[FIIZ)V
.end method

.method public static native peekInt(IZ)I
.end method

.method public static peekInt([BILjava/nio/ByteOrder;)I
    .registers 6
    .parameter "src"
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 46
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v1, :cond_27

    .line 47
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    move p1, v0

    .line 52
    .end local v0           #offset:I
    .restart local p1
    :goto_26
    return v1

    :cond_27
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    goto :goto_26
.end method

.method public static native peekIntArray(I[IIIZ)V
.end method

.method public static native peekLong(IZ)J
.end method

.method public static peekLong([BILjava/nio/ByteOrder;)J
    .registers 12
    .parameter "src"
    .parameter "offset"
    .parameter "order"

    .prologue
    const-wide v7, 0xffffffffL

    const/16 v5, 0x20

    .line 60
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v3, :cond_58

    .line 61
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, offset:I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v0, v3, v4

    .line 65
    .local v0, h:I
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v1, v3, v4

    .line 69
    .local v1, l:I
    int-to-long v3, v0

    shl-long/2addr v3, v5

    int-to-long v5, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    move p1, v2

    .line 79
    .end local v2           #offset:I
    .restart local p1
    :goto_57
    return-wide v3

    .line 71
    .end local v0           #h:I
    .end local v1           #l:I
    :cond_58
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v1, v3, v4

    .line 75
    .restart local v1       #l:I
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v0, v3, v4

    .line 79
    .restart local v0       #h:I
    int-to-long v3, v0

    shl-long/2addr v3, v5

    int-to-long v5, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    move p1, v2

    .end local v2           #offset:I
    .restart local p1
    goto :goto_57
.end method

.method public static native peekLongArray(I[JIIZ)V
.end method

.method public static native peekShort(IZ)S
.end method

.method public static peekShort([BILjava/nio/ByteOrder;)S
    .registers 5
    .parameter "src"
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 84
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_11

    .line 85
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 87
    :goto_10
    return v0

    :cond_11
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_10
.end method

.method public static native peekShortArray(I[SIIZ)V
.end method

.method public static native pokeByte(IB)V
.end method

.method public static native pokeByteArray(I[BII)V
.end method

.method public static native pokeCharArray(I[CIIZ)V
.end method

.method public static native pokeDoubleArray(I[DIIZ)V
.end method

.method public static native pokeFloatArray(I[FIIZ)V
.end method

.method public static native pokeInt(IIZ)V
.end method

.method public static pokeInt([BIILjava/nio/ByteOrder;)V
    .registers 6
    .parameter "dst"
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 92
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_28

    .line 93
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 94
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 95
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 96
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .line 103
    .end local v0           #offset:I
    .restart local p1
    :goto_27
    return-void

    .line 98
    :cond_28
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 99
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 100
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 101
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    goto :goto_27
.end method

.method public static native pokeIntArray(I[IIIZ)V
.end method

.method public static native pokeLong(IJZ)V
.end method

.method public static pokeLong([BIJLjava/nio/ByteOrder;)V
    .registers 9
    .parameter "dst"
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    const/16 v3, 0x20

    .line 106
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v2, :cond_52

    .line 107
    shr-long v2, p2, v3

    long-to-int v0, v2

    .line 108
    .local v0, i:I
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, offset:I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 109
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 110
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 111
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 112
    long-to-int v0, p2

    .line 113
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 114
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 115
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 116
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    .line 129
    .end local v1           #offset:I
    .restart local p1
    :goto_51
    return-void

    .line 118
    .end local v0           #i:I
    :cond_52
    long-to-int v0, p2

    .line 119
    .restart local v0       #i:I
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 120
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 121
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 122
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 123
    shr-long v2, p2, v3

    long-to-int v0, v2

    .line 124
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 125
    add-int/lit8 p1, v1, 0x1

    .end local v1           #offset:I
    .restart local p1
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 126
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .restart local v1       #offset:I
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 127
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move p1, v1

    .end local v1           #offset:I
    .restart local p1
    goto :goto_51
.end method

.method public static native pokeLongArray(I[JIIZ)V
.end method

.method public static native pokeShort(ISZ)V
.end method

.method public static pokeShort([BISLjava/nio/ByteOrder;)V
    .registers 6
    .parameter "dst"
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 132
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v1, :cond_16

    .line 133
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 134
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .line 139
    .end local v0           #offset:I
    .restart local p1
    :goto_15
    return-void

    .line 136
    :cond_16
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 137
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    move p1, v0

    .end local v0           #offset:I
    .restart local p1
    goto :goto_15
.end method

.method public static native pokeShortArray(I[SIIZ)V
.end method

.method public static native unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V
.end method

.method public static native unsafeBulkPut([BIILjava/lang/Object;IIZ)V
.end method
