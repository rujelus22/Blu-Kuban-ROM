.class public Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;


# static fields
.field private static final PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

.field private static final TYPE_TO_INT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static UNIX_GROUPS:[I

.field private static UNIX_PERMS:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "file"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "cdir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "pdir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "dir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v6, [I

    fill-array-data v0, :array_82

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v4, [I

    aput-object v1, v0, v4

    new-array v1, v3, [I

    aput v5, v1, v4

    aput-object v1, v0, v3

    new-array v1, v3, [I

    aput v3, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_8c

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v2, v3, [I

    aput v4, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_94

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [I

    fill-array-data v2, :array_a4

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    return-void

    :array_82
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_94
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_9c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    return-void
.end method

.method private doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_37

    aget-char v4, v2, v0

    packed-switch v4, :pswitch_data_38

    :goto_f
    :pswitch_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :pswitch_12
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_f

    :pswitch_16
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_f

    :pswitch_1a
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_f

    :pswitch_1e
    invoke-virtual {p1, v1, v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_f

    :pswitch_22
    const/4 v4, 0x2

    invoke-virtual {p1, v1, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_f

    :pswitch_27
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_f

    :pswitch_2b
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_f

    :pswitch_2f
    invoke-virtual {p1, v1, v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_f

    :pswitch_33
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_f

    :cond_37
    return-void

    :pswitch_data_38
    .packed-switch 0x61
        :pswitch_12
        :pswitch_f
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_22
        :pswitch_27
        :pswitch_f
        :pswitch_f
        :pswitch_2b
        :pswitch_f
        :pswitch_2f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_33
    .end packed-switch
.end method

.method public static getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
    .registers 1

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    return-object v0
.end method

.method public static parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 2

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .registers 16

    const-string v0, " "

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "unix.mode="

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    array-length v6, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_36
    if-ge v3, v6, :cond_14d

    aget-object v0, v4, v3

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v7, 0x2

    if-eq v2, v7, :cond_48

    :cond_44
    :goto_44
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_36

    :cond_48
    const/4 v2, 0x0

    aget-object v2, v0, v2

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aget-object v7, v0, v7

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "size"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_44

    :cond_6a
    const-string v8, "sizd"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_44

    :cond_7a
    const-string v8, "modify"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b2

    const-string v0, "."

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_aa

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_91
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    :try_start_9f
    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V
    :try_end_a6
    .catch Ljava/text/ParseException; {:try_start_9f .. :try_end_a6} :catch_150

    :goto_a6
    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    goto :goto_44

    :cond_aa
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_91

    :cond_b2
    const-string v8, "type"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d3

    sget-object v2, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_ca

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto/16 :goto_44

    :cond_ca
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto/16 :goto_44

    :cond_d3
    const-string v8, "unix."

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13e

    const-string v0, "unix."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "group"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-virtual {v1, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    goto/16 :goto_44

    :cond_f8
    const-string v2, "owner"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    invoke-virtual {v1, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    goto/16 :goto_44

    :cond_105
    const-string v2, "mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v8, v0, -0x3

    const/4 v0, 0x0

    move v2, v0

    :goto_115
    const/4 v0, 0x3

    if-ge v2, v0, :cond_44

    add-int v0, v8, v2

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    if-ltz v0, :cond_13a

    const/4 v9, 0x7

    if-gt v0, v9, :cond_13a

    sget-object v9, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    aget-object v9, v9, v0

    array-length v10, v9

    const/4 v0, 0x0

    :goto_12b
    if-ge v0, v10, :cond_13a

    aget v11, v9, v0

    sget-object v12, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    aget v12, v12, v2

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v11, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12b

    :cond_13a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_115

    :cond_13e
    if-nez v5, :cond_44

    const-string v7, "perm"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V

    goto/16 :goto_44

    :cond_14d
    move-object v0, v1

    goto/16 :goto_c

    :catch_150
    move-exception v0

    goto/16 :goto_a6
.end method
