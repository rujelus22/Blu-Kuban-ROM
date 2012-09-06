.class public Lorg/apache/james/mime4j/field/ContentDispositionField;
.super Lorg/apache/james/mime4j/field/AbstractField;


# static fields
.field public static final DISPOSITION_TYPE_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final DISPOSITION_TYPE_INLINE:Ljava/lang/String; = "inline"

.field public static final PARAM_CREATION_DATE:Ljava/lang/String; = "creation-date"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_MODIFICATION_DATE:Ljava/lang/String; = "modification-date"

.field public static final PARAM_READ_DATE:Ljava/lang/String; = "read-date"

.field public static final PARAM_SIZE:Ljava/lang/String; = "size"

.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private creationDate:Ljava/util/Date;

.field private creationDateParsed:Z

.field private dispositionType:Ljava/lang/String;

.field private modificationDate:Ljava/util/Date;

.field private modificationDateParsed:Z

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseException:Lorg/apache/james/mime4j/field/ParseException;

.field private parsed:Z

.field private readDate:Ljava/util/Date;

.field private readDateParsed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/james/mime4j/field/ContentDispositionField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parameters:Ljava/util/Map;

    return-void
.end method

.method private parse()V
    .registers 8

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getBody()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;-><init>(Ljava/io/Reader;)V

    :try_start_e
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->parseAll()V
    :try_end_11
    .catch Lorg/apache/james/mime4j/field/ParseException; {:try_start_e .. :try_end_11} :catch_56
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError; {:try_start_e .. :try_end_11} :catch_88

    :goto_11
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getDispositionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c4

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamValues()Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_c4

    if-eqz v3, :cond_c4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_39
    if-ge v1, v4, :cond_c4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parameters:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_39

    :catch_56
    move-exception v2

    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_85

    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\': "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_85
    iput-object v2, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseException:Lorg/apache/james/mime4j/field/ParseException;

    goto :goto_11

    :catch_88
    move-exception v2

    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_b7

    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\': "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_b7
    new-instance v0, Lorg/apache/james/mime4j/field/ParseException;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseException:Lorg/apache/james/mime4j/field/ParseException;

    goto/16 :goto_11

    :cond_c4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2e

    sget-object v1, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v1, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2d
    :goto_2d
    return-object v0

    :cond_2e
    :try_start_2e
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getDate()Ljava/util/Date;
    :try_end_3f
    .catch Lorg/apache/james/mime4j/field/ParseException; {:try_start_2e .. :try_end_3f} :catch_41
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_2e .. :try_end_3f} :catch_7b

    move-result-object v0

    goto :goto_2d

    :catch_41
    move-exception v1

    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\': "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2d

    :catch_7b
    move-exception v1

    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\': "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_2d
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->creationDateParsed:Z

    if-nez v0, :cond_f

    const-string v0, "creation-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->creationDate:Ljava/util/Date;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->creationDateParsed:Z

    :cond_f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    const-string v0, "filename"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->modificationDateParsed:Z

    if-nez v0, :cond_f

    const-string v0, "modification-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->modificationDate:Ljava/util/Date;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->modificationDateParsed:Z

    :cond_f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->modificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseException:Lorg/apache/james/mime4j/field/ParseException;

    return-object v0
.end method

.method public getReadDate()Ljava/util/Date;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->readDateParsed:Z

    if-nez v0, :cond_f

    const-string v0, "read-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->readDate:Ljava/util/Date;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->readDateParsed:Z

    :cond_f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->readDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .registers 7

    const-wide/16 v0, -0x1

    const-string v2, "size"

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    :try_start_b
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_e} :catch_17

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_a

    move-wide v0, v2

    goto :goto_a

    :catch_17
    move-exception v2

    goto :goto_a
.end method

.method public isAttachment()Z
    .registers 3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDispositionType(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .registers 3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
