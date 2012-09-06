.class public Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;


# instance fields
.field private atBoundary:Z

.field private final boundary:[B

.field private boundaryLen:I

.field private buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private completed:Z

.field private eof:Z

.field private lastPart:Z

.field private limit:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V
    .registers 7

    const/16 v3, 0x2d

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->capacity()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Boundary is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iput-object p1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    aput-byte v3, v1, v0

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    :goto_3a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5e

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4d

    const/16 v2, 0xa

    if-ne v1, v2, :cond_55

    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Boundary may not contain CR or LF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    add-int/lit8 v3, v0, 0x2

    aput-byte v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_5e
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    return-void
.end method

.method private calculateBoundaryLen()V
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_2a

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2a

    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    :cond_2a
    const/4 v1, 0x1

    if-le v0, v1, :cond_47

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_47

    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    :cond_47
    return-void
.end method

.method private endOfStream()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private fillBuffer()I
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-eqz v3, :cond_9

    move v0, v2

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v3

    if-nez v3, :cond_44

    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v3

    :goto_15
    if-ne v3, v2, :cond_18

    move v0, v1

    :cond_18
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf([B)I

    move-result v0

    :goto_22
    if-lez v0, :cond_46

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_46

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    iget-object v6, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v4, v5, v0, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf([BII)I

    move-result v0

    goto :goto_22

    :cond_44
    move v3, v0

    goto :goto_15

    :cond_46
    if-eq v0, v2, :cond_51

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->calculateBoundaryLen()V

    :goto_4f
    move v0, v3

    goto :goto_8

    :cond_51
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    goto :goto_4f

    :cond_5e
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v0

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    goto :goto_4f
.end method

.method private hasData()Z
    .registers 3

    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v1

    if-le v0, v1, :cond_16

    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v1

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private skipBoundary()V
    .registers 9

    const/16 v7, 0x2d

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-nez v0, :cond_50

    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    move v0, v1

    :goto_14
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->length()I

    move-result v2

    if-le v2, v1, :cond_5f

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v2

    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v3

    if-eqz v0, :cond_45

    if-ne v2, v7, :cond_45

    if-ne v3, v7, :cond_45

    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    const/4 v0, 0x0

    goto :goto_14

    :cond_45
    const/16 v4, 0xd

    if-ne v2, v4, :cond_51

    if-ne v3, v6, :cond_51

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    :cond_50
    :goto_50
    return-void

    :cond_51
    if-ne v2, v6, :cond_59

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    goto :goto_50

    :cond_59
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    goto :goto_14

    :cond_5f
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-nez v2, :cond_50

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    goto :goto_14
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public eof()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isLastPart()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    return v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    goto :goto_5

    :cond_16
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    :cond_19
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read()I

    move-result v0

    goto :goto_5

    :cond_26
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    goto :goto_5
.end method

.method public read([BII)I
    .registers 6

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    goto :goto_5

    :cond_16
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->read([BII)I

    move-result v0

    goto :goto_5

    :cond_24
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read([BII)I

    move-result v0

    goto :goto_5
.end method

.method public readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .registers 10

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-eqz v1, :cond_12

    move v1, v2

    :cond_11
    :goto_11
    return v1

    :cond_12
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    move v1, v2

    goto :goto_11

    :cond_23
    move v4, v0

    move v1, v0

    :cond_25
    :goto_25
    if-nez v4, :cond_41

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v3

    if-nez v3, :cond_47

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v3

    if-nez v3, :cond_47

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    move v0, v2

    :cond_41
    if-nez v1, :cond_11

    if-ne v0, v2, :cond_11

    move v1, v2

    goto :goto_11

    :cond_47
    iget v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/16 v6, 0xa

    iget-object v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v7

    invoke-virtual {v5, v6, v7, v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(BII)I

    move-result v5

    if-eq v5, v2, :cond_6a

    const/4 v4, 0x1

    add-int/lit8 v3, v5, 0x1

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v5

    sub-int/2addr v3, v5

    :cond_6a
    if-lez v3, :cond_25

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buf()[B

    move-result-object v5

    iget-object v6, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v6

    invoke-virtual {p1, v5, v6, v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    add-int/2addr v1, v3

    goto :goto_25
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "MimeBoundaryInputStream, boundary "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_16

    aget-byte v4, v2, v0

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
