.class public Lorg/apache/james/mime4j/parser/MimeTokenStream;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStates;
.implements Lorg/apache/james/mime4j/parser/RecursionMode;


# instance fields
.field private final config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

.field private final entities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/james/mime4j/parser/EntityStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private recursionMode:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    return-void
.end method

.method public static final createMaximalDescriptorStream()Lorg/apache/james/mime4j/parser/MimeTokenStream;
    .registers 2

    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->setMaximalBodyDescriptor(Z)V

    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-object v1
.end method

.method public static final createStrictValidationStream()Lorg/apache/james/mime4j/parser/MimeTokenStream;
    .registers 2

    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->setStrictParsing(Z)V

    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-object v1
.end method

.method private doParse(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isCountLineNumbers()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v1, Lorg/apache/james/mime4j/io/LineNumberInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/io/LineNumberInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    :goto_14
    new-instance v0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/16 v2, 0x1000

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v4

    invoke-direct {v0, p1, v2, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    packed-switch v0, :pswitch_data_5c

    :goto_28
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getState()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    return-void

    :pswitch_38
    new-instance v0, Lorg/apache/james/mime4j/parser/RawEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    goto :goto_28

    :pswitch_42
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    if-eqz p2, :cond_57

    invoke-virtual {v0, p2}, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader(Ljava/lang/String;)V

    :cond_57
    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    goto :goto_28

    :cond_5a
    move-object v1, v3

    goto :goto_14

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_42
        :pswitch_42
        :pswitch_38
        :pswitch_42
    .end packed-switch
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDecodedInputStream()Ljava/io/InputStream;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    :goto_19
    return-object v0

    :cond_1a
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_19

    :cond_26
    move-object v0, v1

    goto :goto_19
.end method

.method public getField()Lorg/apache/james/mime4j/parser/Field;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getField()Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_12
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    :goto_14
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getDecodedInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v2

    :cond_1e
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_14
.end method

.method public getRecursionMode()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    return v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    return v0
.end method

.method public isRaw()Z
    .registers 3

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public next()I
    .registers 4

    const/4 v2, -0x1

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-nez v0, :cond_21

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more tokens are available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    :cond_21
    :goto_21
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    :cond_34
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getState()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    if-eq v0, v2, :cond_11

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    :goto_42
    return v0

    :cond_43
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/EntityStateMachine;

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->setRecursionMode(I)V

    goto :goto_21

    :cond_55
    iput v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    goto :goto_42
.end method

.method public parse(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->doParse(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public parseHeadless(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content type may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->doParse(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setRecursionMode(I)V
    .registers 3

    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->setRecursionMode(I)V

    :cond_b
    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncate()V

    return-void
.end method
