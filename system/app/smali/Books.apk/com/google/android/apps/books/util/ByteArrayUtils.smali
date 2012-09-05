.class public Lcom/google/android/apps/books/util/ByteArrayUtils;
.super Ljava/lang/Object;
.source "ByteArrayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteArrayUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferIndexOf([BI[B)I
    .registers 7
    .parameter "input"
    .parameter "inputOffset"
    .parameter "search"

    .prologue
    .line 88
    array-length v2, p2

    if-nez v2, :cond_4

    .line 97
    .end local p1
    :goto_3
    return p1

    .line 89
    .restart local p1
    :cond_4
    move v0, p1

    .local v0, i:I
    :goto_5
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 90
    const/4 v1, 0x0

    .local v1, j:I
    :goto_9
    array-length v2, p2

    if-ge v1, v2, :cond_1a

    .line 91
    add-int v2, v0, v1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_17

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 90
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    move p1, v0

    .line 95
    goto :goto_3

    .line 97
    .end local v1           #j:I
    :cond_1c
    const/4 p1, -0x1

    goto :goto_3
.end method

.method public static buffersEqual([B[B)Z
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 183
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_6

    .line 189
    :cond_5
    :goto_5
    return v1

    .line 184
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 185
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_5

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 189
    :cond_13
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public static concatBuffers(Ljava/util/Collection;)[B
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[B>;)[B"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, buffers:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    const/4 v2, 0x0

    .line 164
    .local v2, length:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 165
    .local v0, buffer:[B
    array-length v5, v0

    add-int/2addr v2, v5

    goto :goto_5

    .line 168
    .end local v0           #buffer:[B
    :cond_14
    new-array v3, v2, [B

    .line 170
    .local v3, output:[B
    const/4 v4, 0x0

    .line 171
    .local v4, position:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 172
    .restart local v0       #buffer:[B
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    array-length v5, v0

    add-int/2addr v4, v5

    goto :goto_1b

    .line 176
    .end local v0           #buffer:[B
    :cond_2f
    return-object v3
.end method

.method public static varargs concatBuffers([[B)[B
    .registers 10
    .parameter "buffers"

    .prologue
    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 145
    .local v1, buffer:[B
    array-length v7, v1

    add-int/2addr v4, v7

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 148
    .end local v1           #buffer:[B
    :cond_d
    new-array v5, v4, [B

    .line 150
    .local v5, output:[B
    const/4 v6, 0x0

    .line 151
    .local v6, position:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 152
    .restart local v1       #buffer:[B
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    array-length v7, v1

    add-int/2addr v6, v7

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 156
    .end local v1           #buffer:[B
    :cond_21
    return-object v5
.end method

.method public static readInt([B)I
    .registers 3
    .parameter "buff"

    .prologue
    .line 55
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readIntLittle([B)I
    .registers 3
    .parameter "buff"

    .prologue
    .line 61
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readIntString([B)I
    .registers 2
    .parameter "buff"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readLongString([B)J
    .registers 3
    .parameter "buff"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readString([B)Ljava/lang/String;
    .registers 4
    .parameter "buff"

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    .line 70
    :goto_7
    return-object v1

    .line 68
    :catch_8
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "ByteArrayUtils"

    const-string v2, "Falling back to default string encoding"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_7
.end method

.method public static splitBufferUsing([B[B)Ljava/util/ArrayList;
    .registers 6
    .parameter "input"
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .line 108
    .local v2, start:I
    invoke-static {p0, v2, p1}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v1

    .line 109
    .local v1, offset:I
    :goto_a
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1e

    .line 110
    sub-int v3, v1, v2

    invoke-static {p0, v2, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    array-length v3, p1

    add-int v2, v1, v3

    .line 112
    invoke-static {p0, v2, p1}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v1

    goto :goto_a

    .line 114
    :cond_1e
    array-length v3, p0

    if-ge v2, v3, :cond_29

    .line 115
    invoke-static {p0, v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_28
    :goto_28
    return-object v0

    .line 116
    :cond_29
    array-length v3, p0

    if-ne v2, v3, :cond_28

    .line 117
    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method public static subBuffer([BI)[B
    .registers 4
    .parameter "a"
    .parameter "offset"

    .prologue
    .line 126
    array-length v1, p0

    sub-int v0, v1, p1

    .line 127
    .local v0, length:I
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static subBuffer([BII)[B
    .registers 5
    .parameter "a"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 134
    new-array v0, p2, [B

    .line 135
    .local v0, c:[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return-object v0
.end method

.method public static writeInt(I)[B
    .registers 4
    .parameter "value"

    .prologue
    .line 27
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 28
    .local v0, buff:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 29
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 30
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 31
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 32
    return-object v0
.end method

.method public static writeIntLittle(I)[B
    .registers 4
    .parameter "value"

    .prologue
    .line 37
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 38
    .local v0, buff:[B
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 39
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 40
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 41
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 42
    return-object v0
.end method

.method public static writeIntString(I)[B
    .registers 2
    .parameter "value"

    .prologue
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeString(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static writeLongString(J)[B
    .registers 3
    .parameter "value"

    .prologue
    .line 22
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeString(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static writeString(Ljava/lang/String;)[B
    .registers 4
    .parameter "string"

    .prologue
    .line 76
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 79
    :goto_6
    return-object v1

    .line 77
    :catch_7
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "ByteArrayUtils"

    const-string v2, "Falling back to default string encoding"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_6
.end method
