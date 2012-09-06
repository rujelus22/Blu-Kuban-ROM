.class public final Lorg/codehaus/jackson/b/j;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field protected final a:Lorg/codehaus/jackson/b/c;

.field b:Ljava/io/OutputStream;

.field c:[B

.field final d:I

.field e:I

.field f:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/b/c;Ljava/io/OutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 29
    iput v1, p0, Lorg/codehaus/jackson/b/j;->f:I

    .line 33
    iput-object p1, p0, Lorg/codehaus/jackson/b/j;->a:Lorg/codehaus/jackson/b/c;

    .line 34
    iput-object p2, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    .line 36
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->f()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/b/j;->c:[B

    .line 41
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->c:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/codehaus/jackson/b/j;->d:I

    .line 42
    iput v1, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 43
    return-void
.end method

.method private a(I)I
    .registers 6
    .parameter

    .prologue
    const v3, 0xdc00

    .line 361
    iget v0, p0, Lorg/codehaus/jackson/b/j;->f:I

    .line 362
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/b/j;->f:I

    .line 365
    if-lt p1, v3, :cond_f

    const v1, 0xdfff

    if-le p1, v1, :cond_3c

    .line 366
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Broken surrogate pair: first char 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", second 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; illegal combination"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_3c
    const/high16 v1, 0x1

    const v2, 0xd800

    sub-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    sub-int v1, p1, v3

    add-int/2addr v0, v1

    return v0
.end method

.method private static b(I)V
    .registers 4
    .parameter

    .prologue
    .line 374
    const v0, 0x10ffff

    if-le p0, v0, :cond_24

    .line 375
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character point (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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

    .line 377
    :cond_24
    const v0, 0xd800

    if-lt p0, v0, :cond_6c

    .line 378
    const v0, 0xdbff

    if-gt p0, v0, :cond_4d

    .line 379
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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

    .line 381
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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

    .line 385
    :cond_6c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character point (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

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
.method public final append(C)Ljava/io/Writer;
    .registers 2
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/b/j;->write(I)V

    .line 50
    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/b/j;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_30

    .line 58
    iget v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    if-lez v0, :cond_15

    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/b/j;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/b/j;->e:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iput v3, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 62
    :cond_15
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    .line 63
    iput-object v4, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    .line 65
    iget-object v1, p0, Lorg/codehaus/jackson/b/j;->c:[B

    .line 66
    if-eqz v1, :cond_24

    .line 67
    iput-object v4, p0, Lorg/codehaus/jackson/b/j;->c:[B

    .line 68
    iget-object v2, p0, Lorg/codehaus/jackson/b/j;->a:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/b/c;->b([B)V

    .line 71
    :cond_24
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 76
    iget v0, p0, Lorg/codehaus/jackson/b/j;->f:I

    .line 77
    iput v3, p0, Lorg/codehaus/jackson/b/j;->f:I

    .line 78
    if-lez v0, :cond_30

    .line 79
    invoke-static {v0}, Lorg/codehaus/jackson/b/j;->b(I)V

    .line 82
    :cond_30
    return-void
.end method

.method public final flush()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_19

    .line 89
    iget v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    if-lez v0, :cond_14

    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/b/j;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/b/j;->e:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    iput v3, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 93
    :cond_14
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 95
    :cond_19
    return-void
.end method

.method public final write(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 205
    iget v0, p0, Lorg/codehaus/jackson/b/j;->f:I

    if-lez v0, :cond_2a

    .line 206
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/b/j;->a(I)I

    move-result p1

    .line 218
    :cond_9
    iget v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/b/j;->d:I

    if-lt v0, v1, :cond_1a

    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/b/j;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/b/j;->e:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 220
    iput v3, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 223
    :cond_1a
    const/16 v0, 0x80

    if-ge p1, v0, :cond_3f

    .line 224
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->c:[B

    iget v1, p0, Lorg/codehaus/jackson/b/j;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/b/j;->e:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 245
    :goto_29
    return-void

    .line 208
    :cond_2a
    const v0, 0xd800

    if-lt p1, v0, :cond_9

    const v0, 0xdfff

    if-gt p1, v0, :cond_9

    .line 210
    const v0, 0xdbff

    if-le p1, v0, :cond_3c

    .line 211
    invoke-static {p1}, Lorg/codehaus/jackson/b/j;->b(I)V

    .line 214
    :cond_3c
    iput p1, p0, Lorg/codehaus/jackson/b/j;->f:I

    goto :goto_29

    .line 226
    :cond_3f
    iget v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 227
    const/16 v1, 0x800

    if-ge p1, v1, :cond_5e

    .line 228
    iget-object v1, p0, Lorg/codehaus/jackson/b/j;->c:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 229
    iget-object v1, p0, Lorg/codehaus/jackson/b/j;->c:[B

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 243
    :goto_5b
    iput v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    goto :goto_29

    .line 230
    :cond_5e
    const v1, 0xffff

    if-gt p1, v1, :cond_87

    .line 231
    iget-object v1, p0, Lorg/codehaus/jackson/b/j;->c:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 232
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->c:[B

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 233
    iget-object v2, p0, Lorg/codehaus/jackson/b/j;->c:[B

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_5b

    .line 235
    :cond_87
    const v1, 0x10ffff

    if-le p1, v1, :cond_8f

    .line 236
    invoke-static {p1}, Lorg/codehaus/jackson/b/j;->b(I)V

    .line 238
    :cond_8f
    iget-object v1, p0, Lorg/codehaus/jackson/b/j;->c:[B

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 239
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->c:[B

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 240
    iget-object v0, p0, Lorg/codehaus/jackson/b/j;->c:[B

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 241
    iget-object v1, p0, Lorg/codehaus/jackson/b/j;->c:[B

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_5b
.end method

.method public final write(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/b/j;->write(Ljava/lang/String;II)V

    .line 251
    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x80

    const/4 v1, 0x0

    .line 256
    const/4 v0, 0x2

    if-ge p3, v0, :cond_11

    .line 257
    const/4 v0, 0x1

    if-ne p3, v0, :cond_10

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/b/j;->write(I)V

    .line 347
    :cond_10
    :goto_10
    return-void

    .line 264
    :cond_11
    iget v0, p0, Lorg/codehaus/jackson/b/j;->f:I

    if-lez v0, :cond_25

    .line 265
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 266
    add-int/lit8 p3, p3, -0x1

    .line 267
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/b/j;->a(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/b/j;->write(I)V

    move p2, v0

    .line 271
    :cond_25
    iget v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 272
    iget-object v5, p0, Lorg/codehaus/jackson/b/j;->c:[B

    .line 273
    iget v6, p0, Lorg/codehaus/jackson/b/j;->d:I

    .line 276
    add-int v7, p3, p2

    .line 279
    :goto_2d
    if-ge p2, v7, :cond_f0

    .line 283
    if-lt v0, v6, :cond_37

    .line 284
    iget-object v2, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v2, v5, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v1

    .line 288
    :cond_37
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 290
    if-ge v2, v9, :cond_63

    .line 291
    add-int/lit8 v4, v0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 293
    sub-int v2, v7, v3

    .line 294
    sub-int v0, v6, v4

    .line 296
    if-le v2, v0, :cond_f8

    .line 299
    :goto_4a
    add-int v8, v0, v3

    move v2, v4

    move v0, v3

    .line 302
    :goto_4e
    if-ge v0, v8, :cond_f4

    .line 303
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    if-ge v0, v9, :cond_60

    .line 307
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    move v2, v4

    move v0, v3

    goto :goto_4e

    :cond_60
    move v10, v0

    move v0, v2

    move v2, v10

    .line 314
    :cond_63
    const/16 v4, 0x800

    if-ge v2, v4, :cond_7b

    .line 315
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 316
    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v5, v4

    move p2, v3

    goto :goto_2d

    .line 319
    :cond_7b
    const v4, 0xd800

    if-lt v2, v4, :cond_85

    const v4, 0xdfff

    if-le v2, v4, :cond_a4

    .line 320
    :cond_85
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v8, v2, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 321
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v5, v4

    .line 322
    add-int/lit8 v0, v8, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v5, v8

    move p2, v3

    .line 323
    goto :goto_2d

    .line 326
    :cond_a4
    const v4, 0xdbff

    if-le v2, v4, :cond_ae

    .line 327
    iput v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 328
    invoke-static {v2}, Lorg/codehaus/jackson/b/j;->b(I)V

    .line 330
    :cond_ae
    iput v2, p0, Lorg/codehaus/jackson/b/j;->f:I

    .line 332
    if-ge v3, v7, :cond_f0

    .line 333
    add-int/lit8 p2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/b/j;->a(I)I

    move-result v2

    .line 336
    const v3, 0x10ffff

    if-le v2, v3, :cond_c6

    .line 337
    iput v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 338
    invoke-static {v2}, Lorg/codehaus/jackson/b/j;->b(I)V

    .line 340
    :cond_c6
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v2, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 341
    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    .line 342
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 343
    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v5, v3

    goto/16 :goto_2d

    .line 346
    :cond_f0
    iput v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    goto/16 :goto_10

    :cond_f4
    move p2, v0

    move v0, v2

    goto/16 :goto_2d

    :cond_f8
    move v0, v2

    goto/16 :goto_4a
.end method

.method public final write([C)V
    .registers 4
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/b/j;->write([CII)V

    .line 102
    return-void
.end method

.method public final write([CII)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x80

    const/4 v1, 0x0

    .line 108
    const/4 v0, 0x2

    if-ge p3, v0, :cond_f

    .line 109
    const/4 v0, 0x1

    if-ne p3, v0, :cond_e

    .line 110
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/b/j;->write(I)V

    .line 199
    :cond_e
    :goto_e
    return-void

    .line 116
    :cond_f
    iget v0, p0, Lorg/codehaus/jackson/b/j;->f:I

    if-lez v0, :cond_21

    .line 117
    add-int/lit8 v0, p2, 0x1

    aget-char v2, p1, p2

    .line 118
    add-int/lit8 p3, p3, -0x1

    .line 119
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/b/j;->a(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/b/j;->write(I)V

    move p2, v0

    .line 123
    :cond_21
    iget v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 124
    iget-object v5, p0, Lorg/codehaus/jackson/b/j;->c:[B

    .line 125
    iget v6, p0, Lorg/codehaus/jackson/b/j;->d:I

    .line 128
    add-int v7, p3, p2

    .line 131
    :goto_29
    if-ge p2, v7, :cond_e6

    .line 135
    if-lt v0, v6, :cond_33

    .line 136
    iget-object v2, p0, Lorg/codehaus/jackson/b/j;->b:Ljava/io/OutputStream;

    invoke-virtual {v2, v5, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    move v0, v1

    .line 140
    :cond_33
    add-int/lit8 v3, p2, 0x1

    aget-char v2, p1, p2

    .line 142
    if-ge v2, v9, :cond_5b

    .line 143
    add-int/lit8 v4, v0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 145
    sub-int v2, v7, v3

    .line 146
    sub-int v0, v6, v4

    .line 148
    if-le v2, v0, :cond_ee

    .line 151
    :goto_44
    add-int v8, v0, v3

    move v2, v4

    move v0, v3

    .line 154
    :goto_48
    if-ge v0, v8, :cond_ea

    .line 155
    add-int/lit8 v3, v0, 0x1

    aget-char v0, p1, v0

    .line 158
    if-ge v0, v9, :cond_58

    .line 159
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    move v2, v4

    move v0, v3

    goto :goto_48

    :cond_58
    move v10, v0

    move v0, v2

    move v2, v10

    .line 166
    :cond_5b
    const/16 v4, 0x800

    if-ge v2, v4, :cond_73

    .line 167
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 168
    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v5, v4

    move p2, v3

    goto :goto_29

    .line 171
    :cond_73
    const v4, 0xd800

    if-lt v2, v4, :cond_7d

    const v4, 0xdfff

    if-le v2, v4, :cond_9c

    .line 172
    :cond_7d
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v8, v2, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 173
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v5, v4

    .line 174
    add-int/lit8 v0, v8, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v5, v8

    move p2, v3

    .line 175
    goto :goto_29

    .line 178
    :cond_9c
    const v4, 0xdbff

    if-le v2, v4, :cond_a6

    .line 179
    iput v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 180
    invoke-static {v2}, Lorg/codehaus/jackson/b/j;->b(I)V

    .line 182
    :cond_a6
    iput v2, p0, Lorg/codehaus/jackson/b/j;->f:I

    .line 184
    if-ge v3, v7, :cond_e6

    .line 185
    add-int/lit8 p2, v3, 0x1

    aget-char v2, p1, v3

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/b/j;->a(I)I

    move-result v2

    .line 188
    const v3, 0x10ffff

    if-le v2, v3, :cond_bc

    .line 189
    iput v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    .line 190
    invoke-static {v2}, Lorg/codehaus/jackson/b/j;->b(I)V

    .line 192
    :cond_bc
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v2, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 193
    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    .line 194
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 195
    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v5, v3

    goto/16 :goto_29

    .line 198
    :cond_e6
    iput v0, p0, Lorg/codehaus/jackson/b/j;->e:I

    goto/16 :goto_e

    :cond_ea
    move p2, v0

    move v0, v2

    goto/16 :goto_29

    :cond_ee
    move v0, v2

    goto/16 :goto_44
.end method
