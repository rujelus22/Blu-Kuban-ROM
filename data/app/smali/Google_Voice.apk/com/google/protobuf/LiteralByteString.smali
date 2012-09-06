.class Lcom/google/protobuf/LiteralByteString;
.super Lcom/google/protobuf/ByteString;
.source "LiteralByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/LiteralByteString$1;,
        Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;
    }
.end annotation


# instance fields
.field protected final bytes:[B

.field private hash:I


# direct methods
.method constructor <init>([B)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/LiteralByteString;->hash:I

    .line 32
    iput-object p1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    .line 33
    return-void
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public byteAt(I)B
    .registers 3
    .parameter "index"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 5
    .parameter "target"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 92
    return-void
.end method

.method protected copyToInternal([BIII)V
    .registers 6
    .parameter "target"
    .parameter "sourceOffset"
    .parameter "targetOffset"
    .parameter "numberToCopy"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    if-ne p1, p0, :cond_6

    move v0, v1

    .line 149
    .end local p1
    :goto_5
    return v0

    .line 135
    .restart local p1
    :cond_6
    instance-of v0, p1, Lcom/google/protobuf/ByteString;

    if-nez v0, :cond_c

    move v0, v2

    .line 136
    goto :goto_5

    .line 139
    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    if-eq v3, v0, :cond_1b

    move v0, v2

    .line 140
    goto :goto_5

    .line 142
    :cond_1b
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v0

    if-nez v0, :cond_23

    move v0, v1

    .line 143
    goto :goto_5

    .line 146
    :cond_23
    instance-of v0, p1, Lcom/google/protobuf/LiteralByteString;

    if-eqz v0, :cond_32

    .line 147
    check-cast p1, Lcom/google/protobuf/LiteralByteString;

    .end local p1
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v0

    goto :goto_5

    .line 148
    .restart local p1
    :cond_32
    instance-of v0, p1, Lcom/google/protobuf/RopeByteString;

    if-eqz v0, :cond_3b

    .line 149
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    .line 151
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z
    .registers 12
    .parameter "other"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v5

    if-le p3, v5, :cond_27

    .line 168
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Length too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_27
    add-int v5, p2, p3

    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v6

    if-le v5, v6, :cond_60

    .line 172
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ran off end of other: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    :cond_60
    iget-object v2, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    .line 178
    .local v2, thisBytes:[B
    iget-object v0, p1, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    .line 179
    .local v0, otherBytes:[B
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v5

    add-int v4, v5, p3

    .line 180
    .local v4, thisLimit:I
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    .local v3, thisIndex:I
    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v5

    add-int v1, v5, p2

    .line 182
    .local v1, otherIndex:I
    :goto_74
    if-ge v3, v4, :cond_83

    .line 183
    aget-byte v5, v2, v3

    aget-byte v6, v0, v1

    if-eq v5, v6, :cond_7e

    .line 184
    const/4 v5, 0x0

    .line 187
    :goto_7d
    return v5

    .line 182
    :cond_7e
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 187
    :cond_83
    const/4 v5, 0x1

    goto :goto_7d
.end method

.method protected getOffsetIntoBytes()I
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method protected getTreeDepth()I
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 205
    iget v0, p0, Lcom/google/protobuf/LiteralByteString;->hash:I

    .line 207
    .local v0, h:I
    if-nez v0, :cond_12

    .line 208
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v1

    .line 209
    .local v1, size:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v1}, Lcom/google/protobuf/LiteralByteString;->partialHash(III)I

    move-result v0

    .line 210
    if-nez v0, :cond_10

    .line 211
    const/4 v0, 0x1

    .line 213
    :cond_10
    iput v0, p0, Lcom/google/protobuf/LiteralByteString;->hash:I

    .line 215
    .end local v1           #size:I
    :cond_12
    return v0
.end method

.method protected isBalanced()Z
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public isValidUtf8()Z
    .registers 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 118
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v1

    return v1
.end method

.method public iterator()Lcom/google/protobuf/ByteString$ByteIterator;
    .registers 3

    .prologue
    .line 255
    new-instance v0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lcom/google/protobuf/LiteralByteString;Lcom/google/protobuf/LiteralByteString$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .registers 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 238
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method protected partialHash(III)I
    .registers 9
    .parameter "h"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 225
    iget-object v2, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    .line 226
    .local v2, thisBytes:[B
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int v0, v3, p2

    .local v0, i:I
    add-int v1, v0, p3

    .local v1, limit:I
    :goto_a
    if-ge v0, v1, :cond_15

    .line 228
    mul-int/lit8 v3, p1, 0x1f

    aget-byte v4, v2, v0

    add-int p1, v3, v4

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 230
    :cond_15
    return p1
.end method

.method protected partialIsValidUtf8(III)I
    .registers 7
    .parameter "state"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int v0, v1, p2

    .line 124
    .local v0, index:I
    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result v1

    return v1
.end method

.method protected peekCachedHashCode()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcom/google/protobuf/LiteralByteString;->hash:I

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public substring(II)Lcom/google/protobuf/ByteString;
    .registers 8
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 53
    if-gez p1, :cond_21

    .line 54
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beginning index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_21
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    if-le p2, v2, :cond_4e

    .line 58
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_4e
    sub-int v1, p2, p1

    .line 62
    .local v1, substringLength:I
    if-gez v1, :cond_75

    .line 63
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beginning index larger than ending index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_75
    if-nez v1, :cond_7a

    .line 70
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 75
    .local v0, result:Lcom/google/protobuf/ByteString;
    :goto_79
    return-object v0

    .line 72
    .end local v0           #result:Lcom/google/protobuf/ByteString;
    :cond_7a
    new-instance v0, Lcom/google/protobuf/BoundedByteString;

    iget-object v2, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/protobuf/BoundedByteString;-><init>([BII)V

    .restart local v0       #result:Lcom/google/protobuf/ByteString;
    goto :goto_79
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 104
    return-void
.end method
