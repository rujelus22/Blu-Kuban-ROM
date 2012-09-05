.class public final Lorg/codehaus/jackson/io/UTF8Writer;
.super Ljava/io/Writer;
.source "UTF8Writer.java"


# instance fields
.field protected final mContext:Lorg/codehaus/jackson/io/IOContext;

.field mOut:Ljava/io/OutputStream;

.field mOutBuffer:[B

.field final mOutBufferLast:I

.field mOutPtr:I

.field mSurrogate:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)V
    .registers 5
    .parameter "ctxt"
    .parameter "out"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 29
    iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 33
    iput-object p1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mContext:Lorg/codehaus/jackson/io/IOContext;

    .line 34
    iput-object p2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    .line 36
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocWriteIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 41
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I

    .line 42
    iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 43
    return-void
.end method

.method private convertSurrogate(I)I
    .registers 6
    .parameter "secondPart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xdc00

    .line 359
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 360
    .local v0, firstPart:I
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 363
    if-lt p1, v3, :cond_f

    const v1, 0xdfff

    if-le p1, v1, :cond_40

    .line 364
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken surrogate pair: first char 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", second 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; illegal combination"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_40
    const/high16 v1, 0x1

    const v2, 0xd800

    sub-int v2, v0, v2

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sub-int v2, p1, v3

    add-int/2addr v1, v2

    return v1
.end method

.method private throwIllegal(I)V
    .registers 5
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const v0, 0x10ffff

    if-le p1, v0, :cond_28

    .line 373
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_28
    const v0, 0xd800

    if-lt p1, v0, :cond_78

    .line 376
    const v0, 0xdbff

    if-gt p1, v0, :cond_55

    .line 377
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_55
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_78
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 50
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 57
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    if-eqz v3, :cond_30

    .line 58
    iget v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    if-lez v3, :cond_15

    .line 59
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iput v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 62
    :cond_15
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    .line 63
    .local v2, out:Ljava/io/OutputStream;
    iput-object v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    .line 65
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 66
    .local v0, buf:[B
    if-eqz v0, :cond_24

    .line 67
    iput-object v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 68
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseWriteIOBuffer([B)V

    .line 71
    :cond_24
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 76
    iget v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 77
    .local v1, code:I
    iput v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 78
    if-lez v1, :cond_30

    .line 79
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 82
    .end local v0           #buf:[B
    .end local v1           #code:I
    .end local v2           #out:Ljava/io/OutputStream;
    :cond_30
    return-void
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 88
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    if-lez v0, :cond_10

    .line 89
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 92
    :cond_10
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    return-void
.end method

.method public write(I)V
    .registers 8
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 203
    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    if-lez v2, :cond_2a

    .line 204
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result p1

    .line 216
    :cond_9
    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    iget v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I

    if-lt v2, v3, :cond_1a

    .line 217
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iput v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 221
    :cond_1a
    const/16 v2, 0x80

    if-ge p1, v2, :cond_3f

    .line 222
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 243
    :goto_29
    return-void

    .line 206
    :cond_2a
    const v2, 0xd800

    if-lt p1, v2, :cond_9

    const v2, 0xdfff

    if-gt p1, v2, :cond_9

    .line 208
    const v2, 0xdbff

    if-le p1, v2, :cond_3c

    .line 209
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 212
    :cond_3c
    iput p1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    goto :goto_29

    .line 224
    :cond_3f
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 225
    .local v0, ptr:I
    const/16 v2, 0x800

    if-ge p1, v2, :cond_5e

    .line 226
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ptr:I
    .local v1, ptr:I
    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 227
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #ptr:I
    .restart local v0       #ptr:I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 241
    :goto_5b
    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    goto :goto_29

    .line 228
    :cond_5e
    const v2, 0xffff

    if-gt p1, v2, :cond_88

    .line 229
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ptr:I
    .restart local v1       #ptr:I
    shr-int/lit8 v3, p1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 230
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #ptr:I
    .restart local v0       #ptr:I
    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 231
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ptr:I
    .restart local v1       #ptr:I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    move v0, v1

    .end local v1           #ptr:I
    .restart local v0       #ptr:I
    goto :goto_5b

    .line 233
    :cond_88
    const v2, 0x10ffff

    if-le p1, v2, :cond_90

    .line 234
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 236
    :cond_90
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ptr:I
    .restart local v1       #ptr:I
    shr-int/lit8 v3, p1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 237
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #ptr:I
    .restart local v0       #ptr:I
    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 238
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ptr:I
    .restart local v1       #ptr:I
    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 239
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #ptr:I
    .restart local v0       #ptr:I
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_5b
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(Ljava/lang/String;II)V

    .line 249
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 16
    .parameter "str"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    .line 254
    const/4 v9, 0x2

    if-ge p3, v9, :cond_10

    .line 255
    const/4 v9, 0x1

    if-ne p3, v9, :cond_f

    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 345
    :cond_f
    :goto_f
    return-void

    .line 262
    :cond_10
    iget v9, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    if-lez v9, :cond_24

    .line 263
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, off:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 264
    .local v8, second:C
    add-int/lit8 p3, p3, -0x1

    .line 265
    invoke-direct {p0, v8}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    move p2, v3

    .line 269
    .end local v3           #off:I
    .end local v8           #second:C
    .restart local p2
    :cond_24
    iget v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 270
    .local v6, outPtr:I
    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 271
    .local v4, outBuf:[B
    iget v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I

    .line 274
    .local v5, outBufLast:I
    add-int/2addr p3, p2

    move v3, p2

    .line 277
    .end local p2
    .restart local v3       #off:I
    :goto_2c
    if-ge v3, p3, :cond_fb

    .line 281
    if-lt v6, v5, :cond_37

    .line 282
    iget-object v9, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 283
    const/4 v6, 0x0

    .line 286
    :cond_37
    add-int/lit8 p2, v3, 0x1

    .end local v3           #off:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 288
    .local v0, c:I
    if-ge v0, v11, :cond_f7

    .line 289
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .local v7, outPtr:I
    int-to-byte v9, v0

    aput-byte v9, v4, v6

    .line 291
    sub-int v1, p3, p2

    .line 292
    .local v1, maxInCount:I
    sub-int v2, v5, v7

    .line 294
    .local v2, maxOutCount:I
    if-le v1, v2, :cond_4b

    .line 295
    move v1, v2

    .line 297
    :cond_4b
    add-int/2addr v1, p2

    move v3, p2

    .line 300
    .end local p2
    .restart local v3       #off:I
    :goto_4d
    if-lt v3, v1, :cond_51

    move v6, v7

    .line 301
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_2c

    .line 303
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_51
    add-int/lit8 p2, v3, 0x1

    .end local v3           #off:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    if-lt v0, v11, :cond_74

    move v3, p2

    .line 312
    .end local v1           #maxInCount:I
    .end local v2           #maxOutCount:I
    .end local p2
    .restart local v3       #off:I
    :goto_5a
    const/16 v9, 0x800

    if-ge v0, v9, :cond_7c

    .line 313
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 314
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    move p2, v3

    .end local v3           #off:I
    .restart local p2
    :goto_72
    move v3, p2

    .line 343
    .end local p2
    .restart local v3       #off:I
    goto :goto_2c

    .line 307
    .end local v3           #off:I
    .end local v6           #outPtr:I
    .restart local v1       #maxInCount:I
    .restart local v2       #maxOutCount:I
    .restart local v7       #outPtr:I
    .restart local p2
    :cond_74
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    int-to-byte v9, v0

    aput-byte v9, v4, v7

    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    move v3, p2

    .end local p2
    .restart local v3       #off:I
    goto :goto_4d

    .line 317
    .end local v1           #maxInCount:I
    .end local v2           #maxOutCount:I
    :cond_7c
    const v9, 0xd800

    if-lt v0, v9, :cond_86

    const v9, 0xdfff

    if-le v0, v9, :cond_a4

    .line 318
    :cond_86
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 319
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 320
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    goto :goto_2c

    .line 324
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_a4
    const v9, 0xdbff

    if-le v0, v9, :cond_ae

    .line 325
    iput v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 326
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 328
    :cond_ae
    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 330
    if-lt v3, p3, :cond_b8

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    move p2, v3

    .line 344
    .end local v0           #c:I
    .end local v3           #off:I
    .restart local p2
    :goto_b4
    iput v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    goto/16 :goto_f

    .line 333
    .end local v6           #outPtr:I
    .end local p2
    .restart local v0       #c:I
    .restart local v3       #off:I
    .restart local v7       #outPtr:I
    :cond_b8
    add-int/lit8 p2, v3, 0x1

    .end local v3           #off:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v0

    .line 334
    const v9, 0x10ffff

    if-le v0, v9, :cond_cc

    .line 335
    iput v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 336
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 338
    :cond_cc
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    shr-int/lit8 v9, v0, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 339
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 340
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 341
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_72

    :cond_f7
    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    move v3, p2

    .end local p2
    .restart local v3       #off:I
    goto/16 :goto_5a

    .end local v0           #c:I
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_fb
    move p2, v3

    .end local v3           #off:I
    .restart local p2
    goto :goto_b4
.end method

.method public write([C)V
    .registers 4
    .parameter "cbuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write([CII)V

    .line 100
    return-void
.end method

.method public write([CII)V
    .registers 16
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    .line 106
    const/4 v9, 0x2

    if-ge p3, v9, :cond_e

    .line 107
    const/4 v9, 0x1

    if-ne p3, v9, :cond_d

    .line 108
    aget-char v9, p1, p2

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 197
    :cond_d
    :goto_d
    return-void

    .line 114
    :cond_e
    iget v9, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    if-lez v9, :cond_20

    .line 115
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, off:I
    aget-char v8, p1, p2

    .line 116
    .local v8, second:C
    add-int/lit8 p3, p3, -0x1

    .line 117
    invoke-direct {p0, v8}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    move p2, v3

    .line 121
    .end local v3           #off:I
    .end local v8           #second:C
    .restart local p2
    :cond_20
    iget v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 122
    .local v6, outPtr:I
    iget-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B

    .line 123
    .local v4, outBuf:[B
    iget v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I

    .line 126
    .local v5, outBufLast:I
    add-int/2addr p3, p2

    move v3, p2

    .line 129
    .end local p2
    .restart local v3       #off:I
    :goto_28
    if-ge v3, p3, :cond_f1

    .line 133
    if-lt v6, v5, :cond_33

    .line 134
    iget-object v9, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    const/4 v6, 0x0

    .line 138
    :cond_33
    add-int/lit8 p2, v3, 0x1

    .end local v3           #off:I
    .restart local p2
    aget-char v0, p1, v3

    .line 140
    .local v0, c:I
    if-ge v0, v11, :cond_ed

    .line 141
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .local v7, outPtr:I
    int-to-byte v9, v0

    aput-byte v9, v4, v6

    .line 143
    sub-int v1, p3, p2

    .line 144
    .local v1, maxInCount:I
    sub-int v2, v5, v7

    .line 146
    .local v2, maxOutCount:I
    if-le v1, v2, :cond_45

    .line 147
    move v1, v2

    .line 149
    :cond_45
    add-int/2addr v1, p2

    move v3, p2

    .line 152
    .end local p2
    .restart local v3       #off:I
    :goto_47
    if-lt v3, v1, :cond_4b

    move v6, v7

    .line 153
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_28

    .line 155
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_4b
    add-int/lit8 p2, v3, 0x1

    .end local v3           #off:I
    .restart local p2
    aget-char v0, p1, v3

    .line 156
    if-lt v0, v11, :cond_6c

    move v3, p2

    .line 164
    .end local v1           #maxInCount:I
    .end local v2           #maxOutCount:I
    .end local p2
    .restart local v3       #off:I
    :goto_52
    const/16 v9, 0x800

    if-ge v0, v9, :cond_74

    .line 165
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 166
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    move p2, v3

    .end local v3           #off:I
    .restart local p2
    :goto_6a
    move v3, p2

    .line 195
    .end local p2
    .restart local v3       #off:I
    goto :goto_28

    .line 159
    .end local v3           #off:I
    .end local v6           #outPtr:I
    .restart local v1       #maxInCount:I
    .restart local v2       #maxOutCount:I
    .restart local v7       #outPtr:I
    .restart local p2
    :cond_6c
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    int-to-byte v9, v0

    aput-byte v9, v4, v7

    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    move v3, p2

    .end local p2
    .restart local v3       #off:I
    goto :goto_47

    .line 169
    .end local v1           #maxInCount:I
    .end local v2           #maxOutCount:I
    :cond_74
    const v9, 0xd800

    if-lt v0, v9, :cond_7e

    const v9, 0xdfff

    if-le v0, v9, :cond_9c

    .line 170
    :cond_7e
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 171
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 172
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    goto :goto_28

    .line 176
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_9c
    const v9, 0xdbff

    if-le v0, v9, :cond_a6

    .line 177
    iput v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 178
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 180
    :cond_a6
    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I

    .line 182
    if-lt v3, p3, :cond_b0

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    move p2, v3

    .line 196
    .end local v0           #c:I
    .end local v3           #off:I
    .restart local p2
    :goto_ac
    iput v6, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    goto/16 :goto_d

    .line 185
    .end local v6           #outPtr:I
    .end local p2
    .restart local v0       #c:I
    .restart local v3       #off:I
    .restart local v7       #outPtr:I
    :cond_b0
    add-int/lit8 p2, v3, 0x1

    .end local v3           #off:I
    .restart local p2
    aget-char v9, p1, v3

    invoke-direct {p0, v9}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I

    move-result v0

    .line 186
    const v9, 0x10ffff

    if-le v0, v9, :cond_c2

    .line 187
    iput v7, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I

    .line 188
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V

    .line 190
    :cond_c2
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    shr-int/lit8 v9, v0, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 191
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    .line 192
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    .line 193
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    and-int/lit8 v9, v0, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_6a

    :cond_ed
    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    move v3, p2

    .end local p2
    .restart local v3       #off:I
    goto/16 :goto_52

    .end local v0           #c:I
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_f1
    move p2, v3

    .end local v3           #off:I
    .restart local p2
    goto :goto_ac
.end method
