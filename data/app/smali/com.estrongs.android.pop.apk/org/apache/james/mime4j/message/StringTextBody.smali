.class Lorg/apache/james/mime4j/message/StringTextBody;
.super Lorg/apache/james/mime4j/message/TextBody;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/TextBody;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/james/mime4j/message/SingleBody;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/StringTextBody;->copy()Lorg/apache/james/mime4j/message/StringTextBody;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/james/mime4j/message/StringTextBody;
    .registers 4

    new-instance v0, Lorg/apache/james/mime4j/message/StringTextBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/message/StringTextBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getMimeCharset()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .registers 3

    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v2, 0x400

    new-array v2, v2, [C

    :goto_1a
    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    return-void

    :cond_28
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_1a
.end method
