.class public abstract Lorg/apache/james/mime4j/message/SimpleContentHandler;
.super Lorg/apache/james/mime4j/parser/AbstractContentHandler;


# instance fields
.field private currHeader:Lorg/apache/james/mime4j/message/Header;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
    .registers 4

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    :goto_12
    return-void

    :cond_13
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_12

    :cond_26
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_12
.end method

.method public abstract bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
.end method

.method public final endHeader()V
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->headers(Lorg/apache/james/mime4j/message/Header;)V

    return-void
.end method

.method public final field(Lorg/apache/james/mime4j/parser/Field;)V
    .registers 4

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/AbstractField;->parse(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public abstract headers(Lorg/apache/james/mime4j/message/Header;)V
.end method

.method public final startHeader()V
    .registers 2

    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    return-void
.end method
