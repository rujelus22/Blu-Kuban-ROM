.class public Lorg/apache/james/mime4j/field/ContentTypeField;
.super Lorg/apache/james/mime4j/field/AbstractField;


# static fields
.field public static final PARAM_BOUNDARY:Ljava/lang/String; = "boundary"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser; = null

.field public static final TYPE_MESSAGE_RFC822:Ljava/lang/String; = "message/rfc822"

.field public static final TYPE_MULTIPART_DIGEST:Ljava/lang/String; = "multipart/digest"

.field public static final TYPE_MULTIPART_PREFIX:Ljava/lang/String; = "multipart/"

.field public static final TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private mimeType:Ljava/lang/String;

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

.field private parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/james/mime4j/field/ContentTypeField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentTypeField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    return-void
.end method

.method public static getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "us-ascii"

    goto :goto_e
.end method

.method public static getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    :cond_18
    if-eqz p1, :cond_25

    const-string v0, "multipart/digest"

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "message/rfc822"

    :goto_24
    return-object v0

    :cond_25
    const-string v0, "text/plain"

    goto :goto_24

    :cond_28
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private parse()V
    .registers 8

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBody()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/Reader;)V

    :try_start_e
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseAll()V
    :try_end_11
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_e .. :try_end_11} :catch_6f
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_e .. :try_end_11} :catch_a2

    :goto_11
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_de

    if-eqz v2, :cond_de

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamValues()Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_de

    if-eqz v3, :cond_de

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_54
    if-ge v1, v4, :cond_de

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_54

    :catch_6f
    move-exception v2

    sget-object v3, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9e

    sget-object v3, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

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

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_9e
    iput-object v2, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    goto/16 :goto_11

    :catch_a2
    move-exception v2

    sget-object v3, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_d1

    sget-object v3, Lorg/apache/james/mime4j/field/ContentTypeField;->log:Lorg/apache/commons/logging/Log;

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

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_d1
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    goto/16 :goto_11

    :cond_de
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .registers 2

    const-string v0, "boundary"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

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

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .registers 3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
