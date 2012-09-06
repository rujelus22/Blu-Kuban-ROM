.class public Lorg/apache/james/mime4j/message/MessageBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/parser/ContentHandler;


# instance fields
.field private final bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

.field private final entity:Lorg/apache/james/mime4j/message/Entity;

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/message/Entity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    iput-object p1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->entity:Lorg/apache/james/mime4j/message/Entity;

    new-instance v0, Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/Entity;Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    iput-object p1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->entity:Lorg/apache/james/mime4j/message/Entity;

    new-instance v0, Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/message/BodyFactory;-><init>(Lorg/apache/james/mime4j/storage/StorageProvider;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    return-void
.end method

.method private static loadStream(Ljava/io/InputStream;)Lorg/apache/james/mime4j/util/ByteSequence;
    .registers 4

    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_7

    :cond_12
    return-object v0
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
    .registers 5

    const-class v0, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "base64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    new-instance v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    :cond_17
    :goto_17
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/apache/james/mime4j/message/BodyFactory;->textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;

    move-result-object v0

    move-object v1, v0

    :goto_2e
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    return-void

    :cond_3a
    const-string v1, "quoted-printable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    goto :goto_17

    :cond_49
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-virtual {v0, p2}, Lorg/apache/james/mime4j/message/BodyFactory;->binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/message/BinaryBody;

    move-result-object v0

    move-object v1, v0

    goto :goto_2e
.end method

.method public endBodyPart()V
    .registers 2

    const-class v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endHeader()V
    .registers 3

    const-class v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Header;

    const-class v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Entity;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    return-void
.end method

.method public endMessage()V
    .registers 2

    const-class v0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endMultipart()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .registers 4

    const-class v0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    invoke-static {p1}, Lorg/apache/james/mime4j/message/MessageBuilder;->loadStream(Ljava/io/InputStream;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Multipart;->setEpilogueRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V

    return-void
.end method

.method public field(Lorg/apache/james/mime4j/parser/Field;)V
    .registers 4

    const-class v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/AbstractField;->parse(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Header;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .registers 4

    const-class v0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    invoke-static {p1}, Lorg/apache/james/mime4j/message/MessageBuilder;->loadStream(Ljava/io/InputStream;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Multipart;->setPreambleRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V

    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .registers 3

    const-class v0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    new-instance v1, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Multipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startHeader()V
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startMessage()V
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->entity:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    return-void

    :cond_10
    const-class v0, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    new-instance v1, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Message;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public startMultipart(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .registers 5

    const-class v0, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Entity;

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getSubType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {v2, v1}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
