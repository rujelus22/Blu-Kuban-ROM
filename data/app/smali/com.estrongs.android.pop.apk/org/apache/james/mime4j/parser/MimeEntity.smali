.class public Lorg/apache/james/mime4j/parser/MimeEntity;
.super Lorg/apache/james/mime4j/parser/AbstractEntity;


# static fields
.field private static final T_IN_BODYPART:I = -0x2

.field private static final T_IN_MESSAGE:I = -0x3


# instance fields
.field private dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

.field private final inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private final lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

.field private mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

.field private recursionMode:I

.field private skipHeader:Z

.field private tmpbuf:[B


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;II)V
    .registers 13

    new-instance v6, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v6}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .registers 9

    invoke-direct {p0, p3, p4, p5, p6}, Lorg/apache/james/mime4j/parser/AbstractEntity;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    iput-object p2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {p6}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader:Z

    return-void
.end method

.method private advanceToBoundary()V
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->tmpbuf:[B

    if-nez v0, :cond_12

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->tmpbuf:[B

    :cond_12
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->getLimitedContentStream()Ljava/io/InputStream;

    move-result-object v0

    :cond_16
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->tmpbuf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    :cond_1f
    return-void
.end method

.method private clearMimeStream()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-void
.end method

.method private createMimeStream()V
    .registers 7

    const/16 v0, 0x1000

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, v0, :cond_52

    :goto_10
    :try_start_10
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    if-eqz v1, :cond_38

    new-instance v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    new-instance v3, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    invoke-direct {v1, v3, v2}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;-><init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_28} :catch_47

    :goto_28
    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-void

    :cond_38
    :try_start_38
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->ensureCapacity(I)V

    new-instance v0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;-><init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_46} :catch_47

    goto :goto_28

    :catch_47
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_52
    move v0, v1

    goto :goto_10
.end method

.method private getLimitedContentStream()Ljava/io/InputStream;
    .registers 6

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxContentLen()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_14

    new-instance v0, Lorg/apache/james/mime4j/io/LimitedInputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/james/mime4j/io/LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    goto :goto_13
.end method

.method private nextMessage()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .registers 8

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "base64 encoded message/rfc822 detected"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    :goto_1b
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    new-instance v0, Lorg/apache/james/mime4j/parser/RawEntity;

    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    :goto_25
    return-object v0

    :cond_26
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "quoted-printable encoded message/rfc822 detected"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    goto :goto_1b

    :cond_3c
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    move-object v3, v0

    goto :goto_1b

    :cond_40
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    new-instance v2, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/16 v4, 0x1000

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    goto :goto_25
.end method

.method private nextMimeEntity()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .registers 8

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    new-instance v0, Lorg/apache/james/mime4j/parser/RawEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    :goto_c
    return-object v0

    :cond_d
    new-instance v2, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    const/16 v1, 0x1000

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    const/16 v4, 0xa

    const/16 v5, 0xb

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    goto :goto_c
.end method


# virtual methods
.method public advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .registers 7

    const/16 v5, 0xc

    const/4 v0, 0x5

    const/4 v4, -0x2

    const/4 v3, 0x7

    const/4 v2, 0x3

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    packed-switch v1, :pswitch_data_f2

    :pswitch_b
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->endState:I

    if-ne v0, v1, :cond_d2

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    :goto_14
    const/4 v0, 0x0

    :goto_15
    return-object v0

    :pswitch_16
    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader:Z

    if-eqz v1, :cond_1d

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_14

    :cond_1d
    iput v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_14

    :pswitch_20
    iput v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_14

    :pswitch_23
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->parseField()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x4

    :cond_2a
    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_14

    :pswitch_2d
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    if-ne v1, v2, :cond_3a

    iput v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_14

    :cond_3a
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    goto :goto_14

    :cond_47
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5a

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, -0x3

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->nextMessage()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    goto :goto_15

    :cond_5a
    iput v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_14

    :pswitch_5d
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->advanceToBoundary()V

    iput v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_14

    :cond_6b
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->createMimeStream()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_14

    :pswitch_73
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->advanceToBoundary()V

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    iput v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_14

    :cond_84
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->createMimeStream()V

    iput v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->nextMimeEntity()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    goto :goto_15

    :pswitch_91
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->advanceToBoundary()V

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof()Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v0

    if-nez v0, :cond_b2

    sget-object v0, Lorg/apache/james/mime4j/parser/Event;->MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/parser/MimeEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    :cond_a9
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    const/16 v0, 0x9

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_14

    :cond_b2
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->createMimeStream()V

    iput v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->nextMimeEntity()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    goto/16 :goto_15

    :pswitch_c8
    iput v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_14

    :pswitch_cc
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->endState:I

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_14

    :cond_d2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/MimeEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_f2
    .packed-switch -0x3
        :pswitch_cc
        :pswitch_91
        :pswitch_b
        :pswitch_16
        :pswitch_b
        :pswitch_b
        :pswitch_23
        :pswitch_23
        :pswitch_2d
        :pswitch_5d
        :pswitch_cc
        :pswitch_73
        :pswitch_c8
        :pswitch_20
        :pswitch_b
        :pswitch_cc
    .end packed-switch
.end method

.method public getContentStream()Ljava/io/InputStream;
    .registers 4

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    packed-switch v0, :pswitch_data_2a

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/MimeEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->getLimitedContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x6
        :pswitch_24
        :pswitch_5
        :pswitch_24
        :pswitch_24
        :pswitch_5
        :pswitch_5
        :pswitch_24
    .end packed-switch
.end method

.method protected getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-object v0
.end method

.method protected getLineNumber()I
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    invoke-interface {v0}, Lorg/apache/james/mime4j/io/LineNumberSource;->getLineNumber()I

    move-result v0

    goto :goto_5
.end method

.method public getRecursionMode()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    return v0
.end method

.method public setRecursionMode(I)V
    .registers 2

    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    return-void
.end method

.method public skipHeader(Ljava/lang/String;)V
    .registers 6

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/MimeEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    new-instance v2, Lorg/apache/james/mime4j/parser/RawField;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lorg/apache/james/mime4j/parser/RawField;-><init>(Lorg/apache/james/mime4j/util/ByteSequence;I)V

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method
