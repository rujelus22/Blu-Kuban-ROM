.class public Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MM-dd-yy HH:mm"

.field private static final REGEX:Ljava/lang/String; = "\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 3

    const-string v0, "\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "OS/2"

    const-string v2, "MM-dd-yy HH:mm"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 9

    const/4 v6, 0x1

    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    :try_start_40
    invoke-super {p0, v4}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_47
    .catch Ljava/text/ParseException; {:try_start_40 .. :try_end_47} :catch_7c

    :goto_47
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DIR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DIR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    :cond_5f
    invoke-virtual {v0, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :goto_62
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    :goto_74
    return-object v0

    :cond_75
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_62

    :cond_7a
    const/4 v0, 0x0

    goto :goto_74

    :catch_7c
    move-exception v4

    goto :goto_47
.end method
