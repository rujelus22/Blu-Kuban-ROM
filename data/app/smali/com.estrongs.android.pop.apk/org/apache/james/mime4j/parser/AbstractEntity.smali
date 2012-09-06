.class public abstract Lorg/apache/james/mime4j/parser/AbstractEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStateMachine;


# static fields
.field private static final T_IN_BODYPART:I = -0x2

.field private static final T_IN_MESSAGE:I = -0x3

.field private static final fieldChars:Ljava/util/BitSet;


# instance fields
.field protected final body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

.field protected final config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private endOfHeader:Z

.field protected final endState:I

.field private field:Lorg/apache/james/mime4j/parser/Field;

.field private headerCount:I

.field private lineCount:I

.field private final linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field protected final log:Lorg/apache/commons/logging/Log;

.field protected final parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

.field protected final startState:I

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    const/16 v0, 0x21

    :goto_9
    const/16 v1, 0x39

    if-gt v0, v1, :cond_15

    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    const/16 v0, 0x3b

    :goto_17
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_23

    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_23
    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->startState:I

    iput p3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endState:I

    iput-object p4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    iput v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    iput v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    return-void
.end method

.method private fillFieldBuffer()Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;

    move-result-object v2

    new-instance v3, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v0, 0x40

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    :cond_1d
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v1, :cond_34

    invoke-virtual {v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v4, v1, :cond_34

    new-instance v0, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    if-lez v0, :cond_3f

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v4

    invoke-virtual {v3, v4, v7, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    :cond_3f
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->clear()V

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_55

    sget-object v0, Lorg/apache/james/mime4j/parser/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    iput-boolean v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    :goto_54
    return-object v3

    :cond_55
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_6b

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_6b

    add-int/lit8 v0, v0, -0x1

    :cond_6b
    if-lez v0, :cond_7b

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_7b

    add-int/lit8 v0, v0, -0x1

    :cond_7b
    if-nez v0, :cond_80

    iput-boolean v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    goto :goto_54

    :cond_80
    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    if-le v0, v6, :cond_1d

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_1d

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1d

    goto :goto_54
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    const-string v0, "Unknown"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "End of stream"

    goto :goto_5

    :pswitch_9
    const-string v0, "Start message"

    goto :goto_5

    :pswitch_c
    const-string v0, "End message"

    goto :goto_5

    :pswitch_f
    const-string v0, "Raw entity"

    goto :goto_5

    :pswitch_12
    const-string v0, "Start header"

    goto :goto_5

    :pswitch_15
    const-string v0, "Field"

    goto :goto_5

    :pswitch_18
    const-string v0, "End header"

    goto :goto_5

    :pswitch_1b
    const-string v0, "Start multipart"

    goto :goto_5

    :pswitch_1e
    const-string v0, "End multipart"

    goto :goto_5

    :pswitch_21
    const-string v0, "Preamble"

    goto :goto_5

    :pswitch_24
    const-string v0, "Epilogue"

    goto :goto_5

    :pswitch_27
    const-string v0, "Start bodypart"

    goto :goto_5

    :pswitch_2a
    const-string v0, "End bodypart"

    goto :goto_5

    :pswitch_2d
    const-string v0, "Body"

    goto :goto_5

    :pswitch_30
    const-string v0, "Bodypart"

    goto :goto_5

    :pswitch_33
    const-string v0, "In message"

    goto :goto_5

    :pswitch_data_36
    .packed-switch -0x3
        :pswitch_33
        :pswitch_30
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method


# virtual methods
.method protected debug(Lorg/apache/james/mime4j/parser/Event;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_26
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    return-object v0

    nop

    :sswitch_data_2a
    .sparse-switch
        -0x1 -> :sswitch_26
        0x6 -> :sswitch_26
        0x8 -> :sswitch_26
        0x9 -> :sswitch_26
        0xc -> :sswitch_26
    .end sparse-switch
.end method

.method protected abstract getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;
.end method

.method public getField()Lorg/apache/james/mime4j/parser/Field;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Lorg/apache/james/mime4j/parser/Field;

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_26
    .end packed-switch
.end method

.method protected abstract getLineNumber()I
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    return v0
.end method

.method protected message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_b

    const-string v0, "Event is unexpectedly null."

    :goto_4
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getLineNumber()I

    move-result v1

    if-gtz v1, :cond_10

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/Event;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected monitor(Lorg/apache/james/mime4j/parser/Event;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isStrictParsing()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lorg/apache/james/mime4j/parser/MimeParseEventException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/parser/MimeParseEventException;-><init>(Lorg/apache/james/mime4j/parser/Event;)V

    throw v0

    :cond_e
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->warn(Lorg/apache/james/mime4j/parser/Event;)V

    return-void
.end method

.method protected newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isMaximalBodyDescriptor()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    goto :goto_d
.end method

.method protected parseField()Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxHeaderCount()I

    move-result v3

    :cond_8
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    if-lt v0, v3, :cond_1a

    new-instance v0, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    const-string v1, "Maximum header limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->fillFieldBuffer()Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v4

    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_36

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_36

    add-int/lit8 v0, v0, -0x1

    :cond_36
    if-lez v0, :cond_44

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_44

    add-int/lit8 v0, v0, -0x1

    :cond_44
    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->setLength(I)V

    const/16 v0, 0x3a

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->indexOf(B)I

    move-result v5

    if-gtz v5, :cond_67

    sget-object v0, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    move v0, v1

    :goto_55
    if-eqz v0, :cond_8

    new-instance v0, Lorg/apache/james/mime4j/parser/RawField;

    invoke-direct {v0, v4, v5}, Lorg/apache/james/mime4j/parser/RawField;-><init>(Lorg/apache/james/mime4j/util/ByteSequence;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Lorg/apache/james/mime4j/parser/Field;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Lorg/apache/james/mime4j/parser/Field;

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    move v0, v2

    goto :goto_d

    :cond_67
    move v0, v1

    :goto_68
    if-ge v0, v5, :cond_82

    sget-object v6, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_7f

    sget-object v0, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    move v0, v1

    goto :goto_55

    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_82
    move v0, v2

    goto :goto_55
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected warn(Lorg/apache/james/mime4j/parser/Event;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method
