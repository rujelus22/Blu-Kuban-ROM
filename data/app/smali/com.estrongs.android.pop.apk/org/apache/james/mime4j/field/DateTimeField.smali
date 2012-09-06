.class public Lorg/apache/james/mime4j/field/DateTimeField;
.super Lorg/apache/james/mime4j/field/AbstractField;


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private date:Ljava/util/Date;

.field private parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DateTimeField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    return-void
.end method

.method private parse()V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->getBody()Ljava/lang/String;

    move-result-object v1

    :try_start_4
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;
    :try_end_18
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_4 .. :try_end_18} :catch_1c
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_4 .. :try_end_18} :catch_4e

    :goto_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    return-void

    :catch_1c
    move-exception v0

    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4b
    iput-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    goto :goto_18

    :catch_4e
    move-exception v0

    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7d

    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_7d
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    goto :goto_18
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    return-object v0
.end method
