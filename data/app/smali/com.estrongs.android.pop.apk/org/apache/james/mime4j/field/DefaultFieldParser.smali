.class public Lorg/apache/james/mime4j/field/DefaultFieldParser;
.super Lorg/apache/james/mime4j/field/DelegatingFieldParser;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DelegatingFieldParser;-><init>()V

    const-string v0, "Content-Transfer-Encoding"

    sget-object v1, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v0, "Content-Type"

    sget-object v1, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v0, "Content-Disposition"

    sget-object v1, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    sget-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Date"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v1, "Resent-Date"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    sget-object v0, Lorg/apache/james/mime4j/field/MailboxListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "From"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v1, "Resent-From"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    sget-object v0, Lorg/apache/james/mime4j/field/MailboxField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Sender"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v1, "Resent-Sender"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    sget-object v0, Lorg/apache/james/mime4j/field/AddressListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v1, "Resent-To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v1, "Cc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v1, "Resent-Cc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v1, "Bcc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v1, "Resent-Bcc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    const-string v1, "Reply-To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    return-void
.end method
