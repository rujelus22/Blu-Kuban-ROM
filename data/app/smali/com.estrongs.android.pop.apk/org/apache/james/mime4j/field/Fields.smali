.class public Lorg/apache/james/mime4j/field/Fields;
.super Ljava/lang/Object;


# static fields
.field private static final FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[\\x21-\\x39\\x3b-\\x7e]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/Fields;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method private static addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/field/AddressListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/AddressListField;

    return-object v0
.end method

.method public static bcc(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    const-string v0, "Bcc"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static bcc(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 3

    const-string v0, "Bcc"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs bcc([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 3

    const-string v0, "Bcc"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static cc(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    const-string v0, "Cc"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static cc(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 3

    const-string v0, "Cc"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs cc([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 3

    const-string v0, "Cc"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method private static checkValidFieldName(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lorg/apache/james/mime4j/field/Fields;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid field name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    return-void
.end method

.method public static contentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .registers 3

    sget-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Disposition"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .registers 9

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .registers 11

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_d

    const-string v1, "filename"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_1c

    const-string v1, "size"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    if-eqz p4, :cond_27

    const-string v1, "creation-date"

    invoke-static {p4, v3}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    if-eqz p5, :cond_32

    const-string v1, "modification-date"

    invoke-static {p5, v3}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    if-eqz p6, :cond_3d

    const-string v1, "read-date"

    invoke-static {p6, v3}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    return-object v0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/field/ContentDispositionField;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidDispositionType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_14
    sget-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Disposition"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    :goto_1e
    return-object v0

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "; "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    goto :goto_1e
.end method

.method public static contentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
    .registers 3

    sget-object v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Transfer-Encoding"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    return-object v0
.end method

.method public static contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .registers 3

    sget-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Type"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    return-object v0
.end method

.method public static contentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/field/ContentTypeField;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_14
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Type"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    :goto_1e
    return-object v0

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "; "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v0

    goto :goto_1e
.end method

.method public static date(Ljava/lang/String;Ljava/util/Date;)Lorg/apache/james/mime4j/field/DateTimeField;
    .registers 3

    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public static date(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;
    .registers 4

    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public static date(Ljava/util/Date;)Lorg/apache/james/mime4j/field/DateTimeField;
    .registers 3

    const-string v0, "Date"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method private static date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;
    .registers 5

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/field/DateTimeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    return-object v0
.end method

.method private static encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Address;->getEncodedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/field/MailboxListField;"
        }
    .end annotation

    const-string v0, "From"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxListField;
    .registers 3

    const-string v0, "From"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs from([Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxListField;
    .registers 3

    const-string v0, "From"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method private static isValidDispositionType(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method private static isValidMimeType(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;
    .registers 3

    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;

    move-result-object v0

    return-object v0
.end method

.method private static mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;
    .registers 4

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/field/MailboxField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/MailboxField;

    return-object v0
.end method

.method public static mailboxList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/field/MailboxListField;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v0

    return-object v0
.end method

.method private static mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/field/MailboxListField;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/field/MailboxListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v1, p0, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/MailboxListField;

    return-object v0
.end method

.method public static messageId(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .registers 4

    invoke-static {p0}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/field/UnstructuredField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v2, "Message-ID"

    invoke-static {v1, v2, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">(",
            "Lorg/apache/james/mime4j/field/FieldParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/james/mime4j/field/FieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    return-object v0
.end method

.method public static replyTo(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    const-string v0, "Reply-To"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static replyTo(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 3

    const-string v0, "Reply-To"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs replyTo([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 3

    const-string v0, "Reply-To"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static sender(Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;
    .registers 2

    const-string v0, "Sender"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;

    move-result-object v0

    return-object v0
.end method

.method public static subject(Ljava/lang/String;)Lorg/apache/james/mime4j/field/UnstructuredField;
    .registers 4

    const-string v0, "Subject"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/field/UnstructuredField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v2, "Subject"

    invoke-static {v1, v2, v0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/UnstructuredField;

    return-object v0
.end method

.method public static to(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    const-string v0, "To"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static to(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 3

    const-string v0, "To"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method

.method public static varargs to([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .registers 3

    const-string v0, "To"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v0

    return-object v0
.end method
