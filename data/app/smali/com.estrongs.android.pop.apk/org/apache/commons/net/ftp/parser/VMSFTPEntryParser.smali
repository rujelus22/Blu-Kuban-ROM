.class public Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "d-MMM-yyyy HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(.*;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 3

    const-string v0, "(.*;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "VMS"

    const-string v2, "d-MMM-yyyy HH:mm:ss"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected isVersioning()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 16

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v5, 0x200

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    new-instance v4, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v4}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    invoke-virtual {v4, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v12}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v13}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/String;

    const/16 v11, 0x9

    invoke-virtual {p0, v11}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    :try_start_5c
    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_63
    .catch Ljava/text/ParseException; {:try_start_5c .. :try_end_63} :catch_ea

    :goto_63
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v11, ","

    invoke-direct {v0, v9, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    packed-switch v9, :pswitch_data_ee

    move-object v0, v1

    :goto_72
    const-string v9, ".DIR"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_d0

    invoke-virtual {v4, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :goto_7e
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->isVersioning()Z

    move-result v9

    if-eqz v9, :cond_d4

    invoke-virtual {v4, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    :goto_87
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    invoke-virtual {v4, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    move v1, v3

    :goto_96
    if-ge v1, v13, :cond_e8

    aget-object v5, v10, v1

    const/16 v0, 0x52

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e2

    move v0, v2

    :goto_a3
    invoke-virtual {v4, v1, v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    const/16 v0, 0x57

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e4

    move v0, v2

    :goto_af
    invoke-virtual {v4, v1, v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    const/16 v0, 0x45

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e6

    move v0, v2

    :goto_bb
    invoke-virtual {v4, v1, v12, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_96

    :pswitch_c2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_72

    :pswitch_c7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_72

    :cond_d0
    invoke-virtual {v4, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_7e

    :cond_d4
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_87

    :cond_e2
    move v0, v3

    goto :goto_a3

    :cond_e4
    move v0, v3

    goto :goto_af

    :cond_e6
    move v0, v3

    goto :goto_bb

    :cond_e8
    move-object v1, v4

    :cond_e9
    return-object v1

    :catch_ea
    move-exception v0

    goto/16 :goto_63

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_c7
    .end packed-switch
.end method

.method public parseFileList(Ljava/io/InputStream;)[Lorg/apache/commons/net/ftp/FTPFile;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    if-eqz v0, :cond_2f

    const-string v2, "Directory"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "Total"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    :goto_36
    return-object v0

    :cond_37
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method
