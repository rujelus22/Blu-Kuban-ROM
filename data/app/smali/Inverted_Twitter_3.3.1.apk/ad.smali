.class public final Lad;
.super Ly;


# instance fields
.field final g:Z

.field h:C

.field i:I

.field j:I


# direct methods
.method public constructor <init>(Lz;Ljava/io/InputStream;[BIIZ)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Ly;-><init>(Lz;Ljava/io/InputStream;[BII)V

    iput-char v0, p0, Lad;->h:C

    iput v0, p0, Lad;->i:I

    iput v0, p0, Lad;->j:I

    iput-boolean p6, p0, Lad;->g:Z

    return-void
.end method

.method private a(I)Z
    .registers 8

    const/4 v0, 0x0

    iget v1, p0, Lad;->j:I

    iget v2, p0, Lad;->e:I

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lad;->j:I

    if-lez p1, :cond_76

    iget v1, p0, Lad;->d:I

    if-lez v1, :cond_22

    move v1, v0

    :goto_10
    if-ge v1, p1, :cond_20

    iget-object v2, p0, Lad;->c:[B

    iget-object v3, p0, Lad;->c:[B

    iget v4, p0, Lad;->d:I

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    iput v0, p0, Lad;->d:I

    :cond_22
    iput p1, p0, Lad;->e:I

    :goto_24
    iget v0, p0, Lad;->e:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_99

    iget-object v0, p0, Lad;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lad;->c:[B

    iget v2, p0, Lad;->e:I

    iget-object v3, p0, Lad;->c:[B

    array-length v3, v3

    iget v4, p0, Lad;->e:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_93

    if-gez v0, :cond_90

    invoke-virtual {p0}, Lad;->a()V

    iget v0, p0, Lad;->e:I

    iget v1, p0, Lad;->j:I

    add-int/2addr v1, v0

    iget v2, p0, Lad;->i:I

    new-instance v3, Ljava/io/CharConversionException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", needed 4, at char #"

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

    :cond_76
    iput v0, p0, Lad;->d:I

    iget-object v1, p0, Lad;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lad;->c:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_8d

    iput v0, p0, Lad;->e:I

    if-gez v1, :cond_8a

    invoke-virtual {p0}, Lad;->a()V

    :goto_89
    return v0

    :cond_8a
    invoke-static {}, Lad;->b()V

    :cond_8d
    iput v1, p0, Lad;->e:I

    goto :goto_24

    :cond_90
    invoke-static {}, Lad;->b()V

    :cond_93
    iget v1, p0, Lad;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lad;->e:I

    goto :goto_24

    :cond_99
    const/4 v0, 0x1

    goto :goto_89
.end method


# virtual methods
.method public final bridge synthetic close()V
    .registers 1

    invoke-super {p0}, Ly;->close()V

    return-void
.end method

.method public final bridge synthetic read()I
    .registers 2

    invoke-super {p0}, Ly;->read()I

    move-result v0

    return v0
.end method

.method public final read([CII)I
    .registers 11

    const v6, 0x10ffff

    const/4 v0, -0x1

    iget-object v1, p0, Lad;->c:[B

    if-nez v1, :cond_a

    move p3, v0

    :cond_9
    :goto_9
    return p3

    :cond_a
    if-lez p3, :cond_9

    if-ltz p2, :cond_13

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_43

    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read(buf,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    :cond_43
    add-int v3, p3, p2

    iget-char v1, p0, Lad;->h:C

    if-eqz v1, :cond_e8

    add-int/lit8 v2, p2, 0x1

    iget-char v0, p0, Lad;->h:C

    aput-char v0, p1, p2

    const/4 v0, 0x0

    iput-char v0, p0, Lad;->h:C

    :cond_52
    :goto_52
    if-ge v2, v3, :cond_14e

    iget v0, p0, Lad;->d:I

    iget-boolean v1, p0, Lad;->g:Z

    if-eqz v1, :cond_f9

    iget-object v1, p0, Lad;->c:[B

    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    iget-object v4, p0, Lad;->c:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    iget-object v4, p0, Lad;->c:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    iget-object v4, p0, Lad;->c:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    :goto_7f
    iget v1, p0, Lad;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lad;->d:I

    const v1, 0xffff

    if-le v0, v1, :cond_142

    if-le v0, v6, :cond_120

    sub-int v1, v2, p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(above "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lad;->j:I

    iget v4, p0, Lad;->d:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lad;->i:I

    add-int/2addr v1, v4

    new-instance v4, Ljava/io/CharConversionException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid UTF-32 character 0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    :cond_e8
    iget v1, p0, Lad;->e:I

    iget v2, p0, Lad;->d:I

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_150

    invoke-direct {p0, v1}, Lad;->a(I)Z

    move-result v1

    if-nez v1, :cond_150

    move p3, v0

    goto/16 :goto_9

    :cond_f9
    iget-object v1, p0, Lad;->c:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v4, p0, Lad;->c:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    iget-object v4, p0, Lad;->c:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    iget-object v4, p0, Lad;->c:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v4, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    goto/16 :goto_7f

    :cond_120
    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    const v4, 0xd800

    shr-int/lit8 v5, v0, 0xa

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v2

    const v2, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v2

    if-lt v1, v3, :cond_143

    int-to-char v0, v0

    iput-char v0, p0, Lad;->h:C

    :goto_139
    sub-int p3, v1, p2

    iget v0, p0, Lad;->i:I

    add-int/2addr v0, p3

    iput v0, p0, Lad;->i:I

    goto/16 :goto_9

    :cond_142
    move v1, v2

    :cond_143
    add-int/lit8 v2, v1, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v1

    iget v0, p0, Lad;->d:I

    iget v1, p0, Lad;->e:I

    if-lt v0, v1, :cond_52

    :cond_14e
    move v1, v2

    goto :goto_139

    :cond_150
    move v2, p2

    goto/16 :goto_52
.end method
