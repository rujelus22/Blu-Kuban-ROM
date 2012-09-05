.class public final Lorg/codehaus/jackson/b/i;
.super Lorg/codehaus/jackson/b/a;
.source "SourceFile"


# instance fields
.field final g:Z

.field h:C

.field i:I

.field j:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/b/c;Ljava/io/InputStream;[BIIZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/codehaus/jackson/b/a;-><init>(Lorg/codehaus/jackson/b/c;Ljava/io/InputStream;[BII)V

    .line 20
    iput-char v0, p0, Lorg/codehaus/jackson/b/i;->h:C

    .line 25
    iput v0, p0, Lorg/codehaus/jackson/b/i;->i:I

    .line 30
    iput v0, p0, Lorg/codehaus/jackson/b/i;->j:I

    .line 43
    iput-boolean p6, p0, Lorg/codehaus/jackson/b/i;->g:Z

    .line 44
    return-void
.end method

.method private a(I)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 167
    iget v1, p0, Lorg/codehaus/jackson/b/i;->j:I

    iget v2, p0, Lorg/codehaus/jackson/b/i;->e:I

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/b/i;->j:I

    .line 170
    if-lez p1, :cond_84

    .line 171
    iget v1, p0, Lorg/codehaus/jackson/b/i;->d:I

    if-lez v1, :cond_23

    move v1, v0

    .line 172
    :goto_11
    if-ge v1, p1, :cond_21

    .line 173
    iget-object v2, p0, Lorg/codehaus/jackson/b/i;->c:[B

    iget-object v3, p0, Lorg/codehaus/jackson/b/i;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/b/i;->d:I

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 175
    :cond_21
    iput v0, p0, Lorg/codehaus/jackson/b/i;->d:I

    .line 177
    :cond_23
    iput p1, p0, Lorg/codehaus/jackson/b/i;->e:I

    .line 199
    :goto_25
    iget v0, p0, Lorg/codehaus/jackson/b/i;->e:I

    if-ge v0, v6, :cond_a8

    .line 200
    iget-object v0, p0, Lorg/codehaus/jackson/b/i;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/b/i;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/b/i;->e:I

    iget-object v3, p0, Lorg/codehaus/jackson/b/i;->c:[B

    array-length v3, v3

    iget v4, p0, Lorg/codehaus/jackson/b/i;->e:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 201
    if-gtz v0, :cond_a1

    .line 202
    if-gez v0, :cond_9e

    .line 203
    invoke-virtual {p0}, Lorg/codehaus/jackson/b/i;->a()V

    .line 204
    iget v0, p0, Lorg/codehaus/jackson/b/i;->e:I

    iget v1, p0, Lorg/codehaus/jackson/b/i;->j:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/b/i;->i:I

    new-instance v3, Ljava/io/CharConversionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", needed "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", at char #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", byte #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :cond_84
    iput v0, p0, Lorg/codehaus/jackson/b/i;->d:I

    .line 183
    iget-object v1, p0, Lorg/codehaus/jackson/b/i;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/b/i;->c:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 184
    if-gtz v1, :cond_9b

    .line 185
    iput v0, p0, Lorg/codehaus/jackson/b/i;->e:I

    .line 186
    if-gez v1, :cond_98

    .line 187
    invoke-virtual {p0}, Lorg/codehaus/jackson/b/i;->a()V

    .line 211
    :goto_97
    return v0

    .line 191
    :cond_98
    invoke-static {}, Lorg/codehaus/jackson/b/i;->b()V

    .line 193
    :cond_9b
    iput v1, p0, Lorg/codehaus/jackson/b/i;->e:I

    goto :goto_25

    .line 207
    :cond_9e
    invoke-static {}, Lorg/codehaus/jackson/b/i;->b()V

    .line 209
    :cond_a1
    iget v1, p0, Lorg/codehaus/jackson/b/i;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/b/i;->e:I

    goto/16 :goto_25

    .line 211
    :cond_a8
    const/4 v0, 0x1

    goto :goto_97
.end method


# virtual methods
.method public final bridge synthetic close()V
    .registers 1

    .prologue
    .line 10
    invoke-super {p0}, Lorg/codehaus/jackson/b/a;->close()V

    return-void
.end method

.method public final bridge synthetic read()I
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lorg/codehaus/jackson/b/a;->read()I

    move-result v0

    return v0
.end method

.method public final read([CII)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x10ffff

    const/4 v0, -0x1

    .line 57
    iget-object v1, p0, Lorg/codehaus/jackson/b/i;->c:[B

    if-nez v1, :cond_a

    move p3, v0

    .line 127
    :cond_9
    :goto_9
    return p3

    .line 60
    :cond_a
    if-lez p3, :cond_9

    .line 64
    if-ltz p2, :cond_13

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_47

    .line 65
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_47
    add-int v3, p3, p2

    .line 72
    iget-char v1, p0, Lorg/codehaus/jackson/b/i;->h:C

    if-eqz v1, :cond_f4

    .line 73
    add-int/lit8 v2, p2, 0x1

    iget-char v0, p0, Lorg/codehaus/jackson/b/i;->h:C

    aput-char v0, p1, p2

    .line 74
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/codehaus/jackson/b/i;->h:C

    .line 89
    :cond_56
    :goto_56
    if-ge v2, v3, :cond_15a

    .line 90
    iget v0, p0, Lorg/codehaus/jackson/b/i;->d:I

    .line 93
    iget-boolean v1, p0, Lorg/codehaus/jackson/b/i;->g:Z

    if-eqz v1, :cond_105

    .line 94
    iget-object v1, p0, Lorg/codehaus/jackson/b/i;->c:[B

    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    iget-object v4, p0, Lorg/codehaus/jackson/b/i;->c:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    iget-object v4, p0, Lorg/codehaus/jackson/b/i;->c:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    iget-object v4, p0, Lorg/codehaus/jackson/b/i;->c:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 100
    :goto_83
    iget v1, p0, Lorg/codehaus/jackson/b/i;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/codehaus/jackson/b/i;->d:I

    .line 104
    const v1, 0xffff

    if-le v0, v1, :cond_14e

    .line 105
    if-le v0, v6, :cond_12c

    .line 106
    sub-int v1, v2, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(above "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/codehaus/jackson/b/i;->j:I

    iget v4, p0, Lorg/codehaus/jackson/b/i;->d:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/codehaus/jackson/b/i;->i:I

    add-int/2addr v1, v4

    new-instance v4, Ljava/io/CharConversionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid UTF-32 character 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at char #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", byte #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_f4
    iget v1, p0, Lorg/codehaus/jackson/b/i;->e:I

    iget v2, p0, Lorg/codehaus/jackson/b/i;->d:I

    sub-int/2addr v1, v2

    .line 81
    const/4 v2, 0x4

    if-ge v1, v2, :cond_15c

    .line 82
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/b/i;->a(I)Z

    move-result v1

    if-nez v1, :cond_15c

    move p3, v0

    .line 83
    goto/16 :goto_9

    .line 97
    :cond_105
    iget-object v1, p0, Lorg/codehaus/jackson/b/i;->c:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v4, p0, Lorg/codehaus/jackson/b/i;->c:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    iget-object v4, p0, Lorg/codehaus/jackson/b/i;->c:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    iget-object v4, p0, Lorg/codehaus/jackson/b/i;->c:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v4, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    goto/16 :goto_83

    .line 109
    :cond_12c
    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    .line 110
    add-int/lit8 v1, v2, 0x1

    const v4, 0xd800

    shr-int/lit8 v5, v0, 0xa

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v2

    .line 112
    const v2, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v2

    .line 114
    if-lt v1, v3, :cond_14f

    .line 115
    int-to-char v0, v0

    iput-char v0, p0, Lorg/codehaus/jackson/b/i;->h:C

    .line 125
    :goto_145
    sub-int p3, v1, p2

    .line 126
    iget v0, p0, Lorg/codehaus/jackson/b/i;->i:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/b/i;->i:I

    goto/16 :goto_9

    :cond_14e
    move v1, v2

    .line 119
    :cond_14f
    add-int/lit8 v2, v1, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v1

    .line 120
    iget v0, p0, Lorg/codehaus/jackson/b/i;->d:I

    iget v1, p0, Lorg/codehaus/jackson/b/i;->e:I

    if-lt v0, v1, :cond_56

    :cond_15a
    move v1, v2

    goto :goto_145

    :cond_15c
    move v2, p2

    goto/16 :goto_56
.end method
