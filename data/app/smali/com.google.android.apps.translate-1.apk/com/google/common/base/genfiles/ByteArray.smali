.class public final Lcom/google/common/base/genfiles/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private length:I

.field private list:[B


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 48
    return-void
.end method

.method private constructor <init>([BI)V
    .registers 3
    .parameter "array"
    .parameter "arrayLength"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    .line 67
    iput p2, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 68
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .parameter "source"
    .parameter "start"
    .parameter "num"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-ltz p3, :cond_16

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 53
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    .line 54
    iput p3, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 55
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-void

    :cond_16
    move v0, v1

    .line 52
    goto :goto_7
.end method

.method public static varargs newInstance([B)Lcom/google/common/base/genfiles/ByteArray;
    .registers 3
    .parameter "array"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/google/common/base/genfiles/ByteArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/genfiles/ByteArray;-><init>([BI)V

    return-object v0
.end method

.method public static newInstance([BI)Lcom/google/common/base/genfiles/ByteArray;
    .registers 3
    .parameter "array"
    .parameter "length"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    if-ltz p1, :cond_12

    array-length v0, p0

    if-gt p1, v0, :cond_12

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 117
    new-instance v0, Lcom/google/common/base/genfiles/ByteArray;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/genfiles/ByteArray;-><init>([BI)V

    return-object v0

    .line 116
    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public add(B)V
    .registers 5
    .parameter "x"

    .prologue
    .line 141
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    iget-object v1, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    array-length v1, v1

    if-lt v0, v1, :cond_e

    .line 142
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/base/genfiles/ByteArray;->ensureCapacity(I)V

    .line 144
    :cond_e
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    iget v1, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    aput-byte p1, v0, v1

    .line 145
    return-void
.end method

.method public add([BII)V
    .registers 6
    .parameter "source"
    .parameter "start"
    .parameter "num"

    .prologue
    .line 149
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    array-length v1, v1

    if-le v0, v1, :cond_e

    .line 150
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/google/common/base/genfiles/ByteArray;->ensureCapacity(I)V

    .line 152
    :cond_e
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    iget v1, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 154
    return-void
.end method

.method public addArray(Lcom/google/common/base/genfiles/ByteArray;)V
    .registers 5
    .parameter "other"

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/google/common/base/genfiles/ByteArray;->rep()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/common/base/genfiles/ByteArray;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/base/genfiles/ByteArray;->add([BII)V

    .line 159
    return-void
.end method

.method public final addUTF(Ljava/lang/String;)V
    .registers 8
    .parameter "str"

    .prologue
    .line 281
    iget v1, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 282
    .local v1, originalLength:I
    sget-object v3, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 283
    .local v2, utf8Bytes:[B
    iget v3, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/google/common/base/genfiles/ByteArray;->resize(I)V

    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, v2

    if-ge v0, v3, :cond_1e

    .line 285
    iget-object v3, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    add-int v4, v1, v0

    aget-byte v5, v2, v0

    aput-byte v5, v3, v4

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 287
    :cond_1e
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 164
    return-void
.end method

.method public copy([BIII)V
    .registers 9
    .parameter "dest"
    .parameter "len"
    .parameter "srcPos"
    .parameter "destPos"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    if-ltz p3, :cond_2c

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 270
    if-ltz p4, :cond_2e

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 271
    if-ltz p2, :cond_30

    move v0, v1

    :goto_11
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 272
    add-int v0, p3, p2

    iget v3, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    if-gt v0, v3, :cond_32

    move v0, v1

    :goto_1b
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 273
    add-int v0, p4, p2

    array-length v3, p1

    if-gt v0, v3, :cond_34

    :goto_23
    invoke-static {v1}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 274
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    invoke-static {v0, p3, p1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    return-void

    :cond_2c
    move v0, v2

    .line 269
    goto :goto_5

    :cond_2e
    move v0, v2

    .line 270
    goto :goto_b

    :cond_30
    move v0, v2

    .line 271
    goto :goto_11

    :cond_32
    move v0, v2

    .line 272
    goto :goto_1b

    :cond_34
    move v1, v2

    .line 273
    goto :goto_23
.end method

.method public ensureCapacity(I)V
    .registers 7
    .parameter "n"

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v2, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    array-length v2, v2

    if-ge v2, p1, :cond_19

    .line 205
    iget-object v2, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    array-length v2, v2

    mul-int/lit8 v1, v2, 0x2

    .line 206
    .local v1, newSize:I
    if-ge v1, p1, :cond_e

    .line 207
    move v1, p1

    .line 209
    :cond_e
    new-array v0, v1, [B

    .line 210
    .local v0, copy:[B
    iget-object v2, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    iget v3, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iput-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    .line 213
    .end local v0           #copy:[B
    .end local v1           #newSize:I
    :cond_19
    return-void
.end method

.method public get(I)B
    .registers 3
    .parameter "i"

    .prologue
    .line 128
    if-ltz p1, :cond_f

    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    if-ge p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 129
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    aget-byte v0, v0, p1

    return v0

    .line 128
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public indexOf(B)I
    .registers 4
    .parameter "element"

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    if-ge v0, v1, :cond_f

    .line 195
    iget-object v1, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 199
    .end local v0           #i:I
    :goto_b
    return v0

    .line 194
    .restart local v0       #i:I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_f
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public pop()B
    .registers 3

    .prologue
    .line 176
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 179
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    iget v1, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    aget-byte v0, v0, v1

    return v0

    .line 176
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public removeFast(I)V
    .registers 5
    .parameter "i"

    .prologue
    .line 185
    if-ltz p1, :cond_1a

    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    if-ge p1, v0, :cond_1a

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 186
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    iget-object v1, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    iget v2, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, p1

    .line 187
    invoke-virtual {p0}, Lcom/google/common/base/genfiles/ByteArray;->removeLast()V

    .line 188
    return-void

    .line 185
    :cond_1a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public removeLast()V
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 171
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 172
    return-void

    .line 168
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public rep()[B
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    return-object v0
.end method

.method public resize(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 228
    if-ltz p1, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/common/base/genfiles/ByteArray;->ensureCapacity(I)V

    .line 230
    iput p1, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 231
    return-void

    .line 228
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public set(IB)V
    .registers 4
    .parameter "i"
    .parameter "x"

    .prologue
    .line 135
    if-ltz p1, :cond_f

    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    if-ge p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 136
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    aput-byte p2, v0, p1

    .line 137
    return-void

    .line 135
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public size()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    return v0
.end method

.method public subArray(II)[B
    .registers 8
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    if-ltz p1, :cond_19

    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 261
    add-int v1, p1, p2

    iget v4, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    if-gt v1, v4, :cond_1b

    :goto_e
    invoke-static {v2}, Lcom/google/common/base/X;->assertTrue(Z)V

    .line 262
    new-array v0, p2, [B

    .line 263
    .local v0, copy:[B
    iget-object v1, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    invoke-static {v1, p1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-object v0

    .end local v0           #copy:[B
    :cond_19
    move v1, v3

    .line 260
    goto :goto_5

    :cond_1b
    move v2, v3

    .line 261
    goto :goto_e
.end method

.method public swap(Lcom/google/common/base/genfiles/ByteArray;)V
    .registers 5
    .parameter "other"

    .prologue
    .line 243
    iget v0, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 244
    .local v0, tmpLength:I
    iget v2, p1, Lcom/google/common/base/genfiles/ByteArray;->length:I

    iput v2, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 245
    iput v0, p1, Lcom/google/common/base/genfiles/ByteArray;->length:I

    .line 246
    iget-object v1, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    .line 247
    .local v1, tmpList:[B
    iget-object v2, p1, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    iput-object v2, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    .line 248
    iput-object v1, p1, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    .line 249
    return-void
.end method

.method public toArray()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 253
    iget v1, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    new-array v0, v1, [B

    .line 254
    .local v0, copy:[B
    iget-object v1, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    iget v2, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    return-object v0
.end method

.method public trimToSize()V
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/common/base/genfiles/ByteArray;->length:I

    if-eq v0, v1, :cond_d

    .line 236
    invoke-virtual {p0}, Lcom/google/common/base/genfiles/ByteArray;->toArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/genfiles/ByteArray;->list:[B

    .line 238
    :cond_d
    return-void
.end method
