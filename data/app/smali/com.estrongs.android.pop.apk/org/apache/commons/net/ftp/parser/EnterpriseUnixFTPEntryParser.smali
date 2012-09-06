.class public Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;


# static fields
.field private static final MONTHS:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

.field private static final REGEX:Ljava/lang/String; = "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 15

    const/16 v12, 0xc

    const/16 v11, 0xb

    const/4 v10, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x16

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x17

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    :try_start_52
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_59} :catch_bb

    :goto_59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v1, 0xe

    invoke-virtual {v2, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v2, v1, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v12, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v11, v10}, Ljava/util/Calendar;->set(II)V

    :try_start_6d
    const-string v1, "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v3, v1, 0x4

    if-eqz v6, :cond_92

    const/4 v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/util/Calendar;->set(II)V

    :goto_7f
    const/4 v1, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_8e} :catch_b7

    :goto_8e
    invoke-virtual {v0, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    :goto_91
    return-object v0

    :cond_92
    const/4 v1, 0x1

    :try_start_93
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v3, :cond_a0

    add-int/lit8 v1, v1, -0x1

    :cond_a0
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/util/Calendar;->set(II)V
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_b6} :catch_b7

    goto :goto_7f

    :catch_b7
    move-exception v1

    goto :goto_8e

    :cond_b9
    const/4 v0, 0x0

    goto :goto_91

    :catch_bb
    move-exception v1

    goto :goto_59
.end method
