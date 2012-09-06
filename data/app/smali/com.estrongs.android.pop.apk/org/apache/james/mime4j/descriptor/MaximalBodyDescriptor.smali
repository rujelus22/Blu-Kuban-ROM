.class public Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;
.super Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;


# static fields
.field private static final DEFAULT_MAJOR_VERSION:I = 0x1

.field private static final DEFAULT_MINOR_VERSION:I


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionParameters:Ljava/util/Map;
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

.field private contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionSize:J

.field private contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionType:Ljava/lang/String;

.field private contentId:Ljava/lang/String;

.field private contentLanguage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentLocation:Ljava/lang/String;

.field private contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentMD5Raw:Ljava/lang/String;

.field private isContentDescriptionSet:Z

.field private isContentDispositionSet:Z

.field private isContentIdSet:Z

.field private isContentLanguageSet:Z

.field private isContentLocationSet:Z

.field private isContentMD5Set:Z

.field private isMimeVersionSet:Z

.field private mimeMajorVersion:I

.field private mimeMinorVersion:I

.field private mimeVersionException:Lorg/apache/james/mime4j/MimeException;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isMimeVersionSet:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMajorVersion:I

    iput v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMinorVersion:I

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDescriptionSet:Z

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionType:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSize:J

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDispositionSet:Z

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguage:Ljava/util/List;

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocation:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLocationSet:Z

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentMD5Raw:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentMD5Set:Z

    return-void
.end method

.method private parseContentDescription(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_a

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDescriptionSet:Z

    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    goto :goto_6
.end method

.method private parseContentDisposition(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDispositionSet:Z

    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionType:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "modification-date"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_27

    :try_start_21
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;
    :try_end_27
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_21 .. :try_end_27} :catch_65

    :cond_27
    :goto_27
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "creation-date"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_39

    :try_start_33
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;
    :try_end_39
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_33 .. :try_end_39} :catch_69

    :cond_39
    :goto_39
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "read-date"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4b

    :try_start_45
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;
    :try_end_4b
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_45 .. :try_end_4b} :catch_6d

    :cond_4b
    :goto_4b
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5d

    :try_start_57
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSize:J
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5d} :catch_71

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_65
    move-exception v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_27

    :catch_69
    move-exception v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_39

    :catch_6d
    move-exception v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_4b

    :catch_71
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/MimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/MimeException;

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_5d
.end method

.method private parseContentId(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_a

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    goto :goto_6
.end method

.method private parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;
    .registers 4

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    return-object v0
.end method

.method private parseLanguage(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLanguageSet:Z

    if-eqz p1, :cond_15

    :try_start_5
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->parse()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguage:Ljava/util/List;
    :try_end_15
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_5 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_15
.end method

.method private parseLocation(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLocationSet:Z

    if-eqz p1, :cond_19

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->setFoldingPreserved(Z)V

    :try_start_13
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->parse()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocation:Ljava/lang/String;
    :try_end_19
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_13 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_19
.end method

.method private parseMD5(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentMD5Set:Z

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentMD5Raw:Ljava/lang/String;

    :cond_b
    return-void
.end method

.method private parseMimeVersion(Ljava/lang/String;)V
    .registers 5

    const/4 v2, -0x1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;-><init>(Ljava/io/Reader;)V

    :try_start_b
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->parse()V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->getMajorVersion()I

    move-result v0

    if-eq v0, v2, :cond_16

    iput v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMajorVersion:I

    :cond_16
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->getMinorVersion()I

    move-result v0

    if-eq v0, v2, :cond_1e

    iput v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMinorVersion:I
    :try_end_1e
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_b .. :try_end_1e} :catch_22

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isMimeVersionSet:Z

    return-void

    :catch_22
    move-exception v0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeVersionException:Lorg/apache/james/mime4j/MimeException;

    goto :goto_1e
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/parser/Field;)V
    .registers 5

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mime-version"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isMimeVersionSet:Z

    if-nez v2, :cond_20

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseMimeVersion(Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    const-string v2, "content-id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    if-nez v2, :cond_30

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseContentId(Ljava/lang/String;)V

    goto :goto_1f

    :cond_30
    const-string v2, "content-description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDescriptionSet:Z

    if-nez v2, :cond_40

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseContentDescription(Ljava/lang/String;)V

    goto :goto_1f

    :cond_40
    const-string v2, "content-disposition"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDispositionSet:Z

    if-nez v2, :cond_50

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseContentDisposition(Ljava/lang/String;)V

    goto :goto_1f

    :cond_50
    const-string v2, "content-language"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLanguageSet:Z

    if-nez v2, :cond_60

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseLanguage(Ljava/lang/String;)V

    goto :goto_1f

    :cond_60
    const-string v2, "content-location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLocationSet:Z

    if-nez v2, :cond_70

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseLocation(Ljava/lang/String;)V

    goto :goto_1f

    :cond_70
    const-string v2, "content-md5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentMD5Set:Z

    if-nez v0, :cond_80

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseMD5(Ljava/lang/String;)V

    goto :goto_1f

    :cond_80
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_1f
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDispositionCreationDate()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    return-object v0
.end method

.method public getContentDispositionCreationDateParseException()Lorg/apache/james/mime4j/MimeException;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionFilename()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "filename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentDispositionModificationDate()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    return-object v0
.end method

.method public getContentDispositionModificationDateParseException()Lorg/apache/james/mime4j/MimeException;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionParameters()Ljava/util/Map;
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

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getContentDispositionReadDate()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    return-object v0
.end method

.method public getContentDispositionReadDateParseException()Lorg/apache/james/mime4j/MimeException;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionSize()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSize:J

    return-wide v0
.end method

.method public getContentDispositionSizeParseException()Lorg/apache/james/mime4j/MimeException;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguage:Ljava/util/List;

    return-object v0
.end method

.method public getContentLanguageParseException()Lorg/apache/james/mime4j/MimeException;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLocationParseException()Lorg/apache/james/mime4j/MimeException;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentMD5Raw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentMD5Raw:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeMajorVersion()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMajorVersion:I

    return v0
.end method

.method public getMimeMinorVersion()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMinorVersion:I

    return v0
.end method

.method public getMimeVersionParseException()Lorg/apache/james/mime4j/MimeException;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeVersionException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method
