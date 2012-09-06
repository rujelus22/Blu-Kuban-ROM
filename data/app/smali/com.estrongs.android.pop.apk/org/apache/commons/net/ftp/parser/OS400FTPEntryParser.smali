.class public Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yy/MM/dd HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\d+)\\s+(\\S+)\\s+(\\S+)\\s+(\\*\\S+)\\s+(\\S+/?)\\s*"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 3

    const-string v0, "(\\S+)\\s+(\\d+)\\s+(\\S+)\\s+(\\S+)\\s+(\\*\\S+)\\s+(\\S+/?)\\s*"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "OS/400"

    const-string v2, "yy/MM/dd HH:mm:ss"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 11

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v4, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v4}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    invoke-virtual {v4, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    :try_start_44
    invoke-super {p0, v7}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_4b
    .catch Ljava/text/ParseException; {:try_start_44 .. :try_end_4b} :catch_95

    :goto_4b
    const-string v7, "*STMF"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    move v0, v1

    :cond_54
    :goto_54
    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    :try_start_5a
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_61} :catch_93

    :goto_61
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_73
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_82

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_82
    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    move-object v0, v4

    :goto_86
    return-object v0

    :cond_87
    const-string v7, "*DIR"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_54

    move v0, v2

    goto :goto_54

    :cond_91
    const/4 v0, 0x0

    goto :goto_86

    :catch_93
    move-exception v0

    goto :goto_61

    :catch_95
    move-exception v7

    goto :goto_4b

    :cond_97
    move-object v0, v3

    goto :goto_73
.end method
