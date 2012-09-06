.class public abstract Lorg/apache/james/mime4j/field/AbstractField;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/ParsedField;


# static fields
.field private static final FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final parser:Lorg/apache/james/mime4j/field/DefaultFieldParser;


# instance fields
.field private final body:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final raw:Lorg/apache/james/mime4j/util/ByteSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^([\\x21-\\x39\\x3b-\\x7e]+):"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/AbstractField;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/apache/james/mime4j/field/DefaultFieldParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/AbstractField;->parser:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/AbstractField;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/james/mime4j/field/AbstractField;->body:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/james/mime4j/field/AbstractField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    return-void
.end method

.method public static getParser()Lorg/apache/james/mime4j/field/DefaultFieldParser;
    .registers 1

    sget-object v0, Lorg/apache/james/mime4j/field/AbstractField;->parser:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ParsedField;
    .registers 2

    invoke-static {p0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/AbstractField;->parse(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/lang/String;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;
    .registers 2

    invoke-static {p0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/field/AbstractField;->parse(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/lang/String;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/lang/String;)Lorg/apache/james/mime4j/field/ParsedField;
    .registers 7

    const/4 v4, 0x1

    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/james/mime4j/field/AbstractField;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_19

    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    const-string v1, "Invalid field in string"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_38

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_38

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_38
    sget-object v1, Lorg/apache/james/mime4j/field/AbstractField;->parser:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    invoke-virtual {v1, v2, v0, p0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public isValidField()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AbstractField;->getParseException()Lorg/apache/james/mime4j/field/ParseException;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/AbstractField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/AbstractField;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
