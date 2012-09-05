.class public Lcom/syncmldstmo/base/smlByteBuffer;
.super Ljava/lang/Object;
.source "smlByteBuffer.java"


# instance fields
.field private _data:[B

.field private _grow:I

.field private _length:I

.field private _pos:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    .line 6
    iput v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    .line 7
    iput v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_grow:I

    .line 8
    iput v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    .line 44
    invoke-direct {p0, v2}, Lcom/syncmldstmo/base/smlByteBuffer;->init(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initlen"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    .line 6
    iput v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    .line 7
    const/16 v0, 0x100

    iput v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_grow:I

    .line 8
    iput v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    .line 49
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/smlByteBuffer;->init(I)V

    .line 50
    return-void
.end method

.method private init(I)V
    .registers 3
    .parameter "len"

    .prologue
    .line 36
    if-eqz p1, :cond_6

    .line 37
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    .line 39
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    .line 40
    return-void
.end method


# virtual methods
.method public add(B)Lcom/syncmldstmo/base/smlByteBuffer;
    .registers 5
    .parameter "b"

    .prologue
    .line 123
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    iget-object v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    array-length v1, v1

    if-lt v0, v1, :cond_c

    .line 124
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_grow:I

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlByteBuffer;->grow(I)V

    .line 126
    :cond_c
    iget-object v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    iget v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    aput-byte p1, v0, v1

    .line 128
    return-object p0
.end method

.method public add(C)Lcom/syncmldstmo/base/smlByteBuffer;
    .registers 3
    .parameter "c"

    .prologue
    .line 133
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlByteBuffer;->add(B)Lcom/syncmldstmo/base/smlByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public add(I)Lcom/syncmldstmo/base/smlByteBuffer;
    .registers 3
    .parameter "byteData"

    .prologue
    .line 138
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlByteBuffer;->add(B)Lcom/syncmldstmo/base/smlByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/syncmldstmo/base/smlByteBuffer;)Lcom/syncmldstmo/base/smlByteBuffer;
    .registers 5
    .parameter "b"

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlByteBuffer;->getBuffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/syncmldstmo/base/smlByteBuffer;->add([BII)Lcom/syncmldstmo/base/smlByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public add([B)Lcom/syncmldstmo/base/smlByteBuffer;
    .registers 4
    .parameter "b"

    .prologue
    .line 154
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/syncmldstmo/base/smlByteBuffer;->add([BII)Lcom/syncmldstmo/base/smlByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public add([BII)Lcom/syncmldstmo/base/smlByteBuffer;
    .registers 6
    .parameter "b"
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 143
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    array-length v1, v1

    if-lt v0, v1, :cond_e

    .line 144
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_grow:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlByteBuffer;->grow(I)V

    .line 146
    :cond_e
    iget-object v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    iget v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    .line 149
    return-object p0
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    .line 64
    iput v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    .line 65
    return-void
.end method

.method public getBuffer()[B
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    return-object v0
.end method

.method public grow()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 21
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_grow:I

    .line 23
    .local v0, alloc:I
    iget-object v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    if-eqz v2, :cond_b

    .line 24
    iget-object v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 26
    :cond_b
    new-array v1, v0, [B

    .line 28
    .local v1, buf:[B
    iget v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    if-lez v2, :cond_18

    .line 29
    iget-object v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    iget v3, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    :cond_18
    iput-object v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    .line 32
    return-void
.end method

.method public grow(I)V
    .registers 3
    .parameter "x"

    .prologue
    .line 12
    const/16 v0, 0x64

    if-ge p1, v0, :cond_6

    .line 13
    const/16 p1, 0x64

    .line 15
    :cond_6
    iput p1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_grow:I

    .line 16
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlByteBuffer;->grow()V

    .line 17
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    return v0
.end method

.method public position()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    return v0
.end method

.method public read()I
    .registers 4

    .prologue
    .line 84
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    iget v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    if-gt v0, v1, :cond_8

    .line 85
    const/4 v0, -0x1

    .line 87
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    iget v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_7
.end method

.method public setLength(I)V
    .registers 6
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 97
    if-gez p1, :cond_8

    .line 99
    iput v3, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    .line 100
    iput v3, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    .line 114
    :goto_7
    return-void

    .line 102
    :cond_8
    iget-object v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    array-length v1, v1

    if-le p1, v1, :cond_1f

    .line 104
    new-array v0, p1, [B

    .line 106
    .local v0, buf:[B
    iget v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    if-lez v1, :cond_1a

    .line 107
    iget-object v1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    iget v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    :cond_1a
    iput-object v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    .line 110
    iput p1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    goto :goto_7

    .line 113
    .end local v0           #buf:[B
    :cond_1f
    iput p1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    goto :goto_7
.end method

.method public setPosition(I)V
    .registers 3
    .parameter "pos"

    .prologue
    .line 74
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    if-le p1, v0, :cond_9

    .line 75
    iget v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    iput v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    .line 80
    :goto_8
    return-void

    .line 76
    :cond_9
    if-gez p1, :cond_f

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    goto :goto_8

    .line 79
    :cond_f
    iput p1, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_pos:I

    goto :goto_8
.end method

.method public toCharArray()[C
    .registers 4

    .prologue
    .line 159
    iget v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    new-array v0, v2, [C

    .line 161
    .local v0, c:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_length:I

    if-lt v1, v2, :cond_a

    .line 164
    return-object v0

    .line 162
    :cond_a
    iget-object v2, p0, Lcom/syncmldstmo/base/smlByteBuffer;->_data:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method
