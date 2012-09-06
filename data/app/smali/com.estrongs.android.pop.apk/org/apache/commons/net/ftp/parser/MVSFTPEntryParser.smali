.class public Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm"

.field static final FILE_LIST_REGEX:Ljava/lang/String; = "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+[FV]\\S*\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

.field static final FILE_LIST_TYPE:I = 0x0

.field static final JES_LEVEL_1_LIST_REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

.field static final JES_LEVEL_1_LIST_TYPE:I = 0x3

.field static final JES_LEVEL_2_LIST_REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

.field static final JES_LEVEL_2_LIST_TYPE:I = 0x4

.field static final MEMBER_LIST_REGEX:Ljava/lang/String; = "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

.field static final MEMBER_LIST_TYPE:I = 0x1

.field static final UNIX_LIST_TYPE:I = 0x2

.field static final UNKNOWN_LIST_TYPE:I = -0x1


# instance fields
.field private isType:I

.field private unixFTPEntryParser:Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method private parseFileList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    const-string v2, "PS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :goto_22
    move v0, v1

    :cond_23
    return v0

    :cond_24
    const-string v2, "PO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "PO-E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_34
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_22
.end method

.method private parseJeslevel1List(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OUTPUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method private parseJeslevel2List(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OUTPUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method private parseMemberList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :try_start_36
    invoke-super {p0, v3}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_3d
    .catch Ljava/text/ParseException; {:try_start_36 .. :try_end_3d} :catch_3e

    :goto_3d
    return v0

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move v0, v1

    goto :goto_3d

    :cond_44
    move v0, v1

    goto :goto_3d
.end method

.method private parseSimpleEntry(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method private parseUnixList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->unixFTPEntryParser:Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "MVS"

    const-string v2, "yyyy/MM/dd HH:mm"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    if-nez v2, :cond_12

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseFileList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    :cond_e
    :goto_e
    if-nez v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    return-object v0

    :cond_12
    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseMemberList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseSimpleEntry(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    goto :goto_e

    :cond_22
    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseUnixList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    goto :goto_e

    :cond_2c
    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_36

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseJeslevel1List(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    goto :goto_e

    :cond_36
    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseJeslevel2List(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    goto :goto_e
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Volume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_30

    const-string v1, "Dsname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_30

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    const-string v0, "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+[FV]\\S*\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    :goto_28
    iget v0, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    if-eq v0, v4, :cond_2f

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2f
    return-object p1

    :cond_30
    const-string v1, "Name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4a

    const-string v1, "Id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    const-string v0, "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_28

    :cond_4a
    const-string v1, "total"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5e

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    new-instance v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->unixFTPEntryParser:Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    goto :goto_28

    :cond_5e
    const-string v1, "Spool Files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_71

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    const-string v0, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_28

    :cond_71
    const-string v1, "JOBNAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8d

    const-string v1, "JOBID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_8d

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    const-string v0, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_28

    :cond_8d
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    goto :goto_28
.end method

.method setType(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    return-void
.end method
