.class public Lorg/apache/http/entity/mime/HttpMultipart;
.super Lorg/apache/james/mime4j/message/Multipart;


# static fields
.field private static final CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;


# instance fields
.field private mode:Lorg/apache/http/entity/mime/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-void
.end method

.method private doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v5

    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    invoke-virtual {p1}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_132

    :cond_1c
    :goto_1c
    return-void

    :pswitch_1d
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getPreamble()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {v4, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    :cond_35
    move v2, v0

    :goto_36
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8d

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v5, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/james/mime4j/message/Header;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/parser/Field;

    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_5b

    :cond_74
    sget-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_84

    sget-object v1, Lorg/apache/james/mime4j/message/MessageWriter;->DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBody(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V

    :cond_84
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_36

    :cond_8d
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v5, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getEpilogue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {v4, v0}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto/16 :goto_1c

    :pswitch_b9
    move v1, v0

    :goto_ba
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_11e

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v5, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v6, "Content-Disposition"

    invoke-virtual {v2, v6}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/james/mime4j/parser/Field;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v2, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v2, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v2, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v2, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_115

    sget-object v2, Lorg/apache/james/mime4j/message/MessageWriter;->DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBody(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V

    :cond_115
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ba

    :cond_11e
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v5, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto/16 :goto_1c

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_b9
    .end packed-switch
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .registers 6

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    return-object v1
.end method

.method private static writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private static writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V
    .registers 3

    instance-of v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v0, :cond_a

    check-cast p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-static {p0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/james/mime4j/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    :goto_9
    return-void

    :cond_a
    invoke-interface {p0}, Lorg/apache/james/mime4j/util/ByteSequence;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_9
.end method


# virtual methods
.method protected getBoundary()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCharset()Ljava/nio/charset/Charset;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/http/entity/mime/HttpMultipart$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    iget-object v3, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v3}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_36

    move-object v0, v1

    :goto_1f
    return-object v0

    :pswitch_20
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_1f

    :pswitch_23
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1f

    :cond_32
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_1f

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public getMode()Lorg/apache/http/entity/mime/HttpMultipartMode;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-object v0
.end method

.method public getTotalLength()J
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v6, -0x1

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v8

    move v1, v0

    move-wide v2, v4

    :goto_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    instance-of v9, v0, Lorg/apache/http/entity/mime/content/ContentBody;

    if-eqz v9, :cond_30

    check-cast v0, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-interface {v0}, Lorg/apache/http/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v9

    cmp-long v0, v9, v4

    if-ltz v0, :cond_2e

    add-long/2addr v2, v9

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2e
    move-wide v0, v6

    :goto_2f
    return-wide v0

    :cond_30
    move-wide v0, v6

    goto :goto_2f

    :cond_32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_37
    iget-object v1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v0, v4}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_42} :catch_45

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_2f

    :catch_45
    move-exception v0

    move-wide v0, v6

    goto :goto_2f
.end method

.method public setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    return-void
.end method
