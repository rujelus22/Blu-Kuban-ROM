.class public Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM d yyyy"

.field static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM d HH:mm"

.field public static final NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig; = null

.field static final NUMERIC_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final REGEX:Ljava/lang/String; = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "yyyy-MM-dd HH:mm"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 3

    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .registers 8

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "MMM d yyyy"

    const-string v3, "MMM d HH:mm"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 16

    new-instance v3, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    invoke-virtual {v3, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_125

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x13

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x15

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    :try_start_5b
    invoke-super {p0, v2}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_62
    .catch Ljava/text/ParseException; {:try_start_5b .. :try_end_62} :catch_12b

    :goto_62
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_12e

    const/4 v1, 0x3

    :goto_6b
    invoke-virtual {v3, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    const/4 v4, 0x4

    const/4 v2, 0x0

    move v5, v4

    move v4, v2

    :goto_72
    const/4 v2, 0x3

    if-ge v4, v2, :cond_d1

    const/4 v12, 0x0

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "-"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    const/4 v2, 0x1

    :goto_83
    invoke-virtual {v3, v4, v12, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    const/4 v12, 0x1

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "-"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    const/4 v2, 0x1

    :goto_96
    invoke-virtual {v3, v4, v12, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v2, v5, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v12, "-"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_cb

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_cb

    const/4 v2, 0x2

    const/4 v12, 0x1

    invoke-virtual {v3, v4, v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    :goto_b7
    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v4, v5, 0x4

    move v5, v4

    move v4, v2

    goto :goto_72

    :sswitch_be
    const/4 v1, 0x1

    goto :goto_6b

    :sswitch_c0
    const/4 v1, 0x2

    goto :goto_6b

    :sswitch_c2
    const/4 v1, 0x2

    goto :goto_6b

    :sswitch_c4
    const/4 v0, 0x1

    :sswitch_c5
    const/4 v1, 0x0

    goto :goto_6b

    :cond_c7
    const/4 v2, 0x0

    goto :goto_83

    :cond_c9
    const/4 v2, 0x0

    goto :goto_96

    :cond_cb
    const/4 v2, 0x2

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_b7

    :cond_d1
    if-nez v0, :cond_da

    :try_start_d3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setHardLinkCount(I)V
    :try_end_da
    .catch Ljava/lang/NumberFormatException; {:try_start_d3 .. :try_end_da} :catch_129

    :cond_da
    :goto_da
    invoke-virtual {v3, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    :try_start_e0
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_e7
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_e7} :catch_127

    :goto_e7
    if-nez v11, :cond_ee

    invoke-virtual {v3, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    :goto_ec
    move-object v0, v3

    :goto_ed
    return-object v0

    :cond_ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_121

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10f

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_ec

    :cond_10f
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setLink(Ljava/lang/String;)V

    goto :goto_ec

    :cond_121
    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_ec

    :cond_125
    const/4 v0, 0x0

    goto :goto_ed

    :catch_127
    move-exception v0

    goto :goto_e7

    :catch_129
    move-exception v0

    goto :goto_da

    :catch_12b
    move-exception v2

    goto/16 :goto_62

    :sswitch_data_12e
    .sparse-switch
        0x2d -> :sswitch_c5
        0x62 -> :sswitch_c4
        0x63 -> :sswitch_c4
        0x64 -> :sswitch_be
        0x65 -> :sswitch_c0
        0x66 -> :sswitch_c5
        0x6c -> :sswitch_c2
    .end sparse-switch
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .registers 5
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

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "^total \\d+$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    :cond_1c
    return-object p1
.end method
