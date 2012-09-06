.class public Lorg/apache/james/mime4j/message/MessageWriter;
.super Ljava/lang/Object;


# static fields
.field private static final CRLF:[B

.field private static final DASHES:[B

.field public static final DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_18

    sput-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->DASHES:[B

    new-instance v0, Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/MessageWriter;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;

    return-void

    nop

    :array_18
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_1e
    .array-data 0x1
        0x2dt
        0x2dt
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBoundary(Lorg/apache/james/mime4j/field/ContentTypeField;)Lorg/apache/james/mime4j/util/ByteSequence;
    .registers 4

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart boundary not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    return-object v0
.end method

.method private getContentType(Lorg/apache/james/mime4j/message/Multipart;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .registers 4

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing parent entity in multipart"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing header in parent entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content-Type field not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    return-object v0
.end method

.method private writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V
    .registers 6

    instance-of v0, p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_12
    return-void

    :cond_13
    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_12
.end method


# virtual methods
.method protected encodeStream(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;
    .registers 5

    invoke-static {p2}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->wrapBase64(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    :cond_a
    :goto_a
    return-object p1

    :cond_b
    invoke-static {p2}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p3}, Lorg/apache/james/mime4j/codec/CodecUtil;->wrapQuotedPrintable(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_a
.end method

.method public writeBody(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V
    .registers 5

    instance-of v0, p1, Lorg/apache/james/mime4j/message/Message;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeEntity(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V

    :goto_9
    return-void

    :cond_a
    instance-of v0, p1, Lorg/apache/james/mime4j/message/Multipart;

    if-eqz v0, :cond_14

    check-cast p1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeMultipart(Lorg/apache/james/mime4j/message/Multipart;Ljava/io/OutputStream;)V

    goto :goto_9

    :cond_14
    instance-of v0, p1, Lorg/apache/james/mime4j/message/SingleBody;

    if-eqz v0, :cond_1e

    check-cast p1, Lorg/apache/james/mime4j/message/SingleBody;

    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/message/SingleBody;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_9

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported body class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeEntity(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V
    .registers 6

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeHeader(Lorg/apache/james/mime4j/message/Header;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Entity;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    instance-of v1, v0, Lorg/apache/james/mime4j/message/BinaryBody;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Entity;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2, v1}, Lorg/apache/james/mime4j/message/MessageWriter;->encodeStream(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBody(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V

    if-eq v1, p2, :cond_31

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_31
    return-void
.end method

.method public writeHeader(Lorg/apache/james/mime4j/message/Header;Ljava/io/OutputStream;)V
    .registers 5

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Header;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/Field;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    :cond_1d
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeMultipart(Lorg/apache/james/mime4j/message/Multipart;Ljava/io/OutputStream;)V
    .registers 7

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/MessageWriter;->getContentType(Lorg/apache/james/mime4j/message/Multipart;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageWriter;->getBoundary(Lorg/apache/james/mime4j/field/ContentTypeField;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getPreambleRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    sget-object v3, Lorg/apache/james/mime4j/message/MessageWriter;->DASHES:[B

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, v1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    sget-object v3, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeEntity(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1c

    :cond_3e
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->DASHES:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, v1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->DASHES:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getEpilogueRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    return-void
.end method
