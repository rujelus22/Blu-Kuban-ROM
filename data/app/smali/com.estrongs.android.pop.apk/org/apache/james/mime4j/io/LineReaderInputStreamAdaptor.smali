.class public Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;


# instance fields
.field private final bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

.field private eof:Z

.field private final maxLineLen:I

.field private used:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;-><init>(Ljava/io/InputStream;)V

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    instance-of v0, p1, Lorg/apache/james/mime4j/io/LineReaderInputStream;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/apache/james/mime4j/io/LineReaderInputStream;

    iput-object p1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    :goto_10
    iput p2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->maxLineLen:I

    return-void

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    goto :goto_10
.end method

.method private doReadLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .registers 7

    const/4 v1, -0x1

    const/4 v0, 0x0

    :cond_2
    iget-object v2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v1, :cond_27

    invoke-virtual {p1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->maxLineLen:I

    if-lez v3, :cond_23

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v3

    iget v4, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->maxLineLen:I

    if-lt v3, v4, :cond_23

    new-instance v0, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    :cond_27
    if-nez v0, :cond_2c

    if-ne v2, v1, :cond_2c

    move v0, v1

    :cond_2c
    return v0
.end method


# virtual methods
.method public eof()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    return v0
.end method

.method public isUsed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    return v0
.end method

.method public read()I
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_10

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    return v2

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public read([BII)I
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_10

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    return v2

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v0

    move v2, v0

    :goto_c
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1b

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    return v2

    :cond_15
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->doReadLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v0

    move v2, v0

    goto :goto_c

    :cond_1b
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LineReaderInputStreamAdaptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
