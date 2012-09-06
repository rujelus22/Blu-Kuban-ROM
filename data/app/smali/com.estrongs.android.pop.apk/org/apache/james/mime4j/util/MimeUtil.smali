.class public final Lorg/apache/james/mime4j/util/MimeUtil;
.super Ljava/lang/Object;


# static fields
.field public static final ENC_7BIT:Ljava/lang/String; = "7bit"

.field public static final ENC_8BIT:Ljava/lang/String; = "8bit"

.field public static final ENC_BASE64:Ljava/lang/String; = "base64"

.field public static final ENC_BINARY:Ljava/lang/String; = "binary"

.field public static final ENC_QUOTED_PRINTABLE:Ljava/lang/String; = "quoted-printable"

.field public static final MIME_HEADER_CONTENT_DESCRIPTION:Ljava/lang/String; = "content-description"

.field public static final MIME_HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final MIME_HEADER_CONTENT_ID:Ljava/lang/String; = "content-id"

.field public static final MIME_HEADER_LANGAUGE:Ljava/lang/String; = "content-language"

.field public static final MIME_HEADER_LOCATION:Ljava/lang/String; = "content-location"

.field public static final MIME_HEADER_MD5:Ljava/lang/String; = "content-md5"

.field public static final MIME_HEADER_MIME_VERSION:Ljava/lang/String; = "mime-version"

.field public static final PARAM_CREATION_DATE:Ljava/lang/String; = "creation-date"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_MODIFICATION_DATE:Ljava/lang/String; = "modification-date"

.field public static final PARAM_READ_DATE:Ljava/lang/String; = "read-date"

.field public static final PARAM_SIZE:Ljava/lang/String; = "size"

.field private static final RFC822_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static counter:I

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/apache/james/mime4j/util/MimeUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    const/4 v0, 0x0

    sput v0, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I

    new-instance v0, Lorg/apache/james/mime4j/util/MimeUtil$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/util/MimeUtil$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->RFC822_DATE_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUniqueBoundary()Ljava/lang/String;
    .registers 4

    const/16 v3, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-=Part."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->nextCounterValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createUniqueMessageId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Mime4j."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->nextCounterValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_3c

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    const/16 v7, 0x4c

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, p1, v3

    if-gt v0, v7, :cond_c

    :goto_b
    return-object p0

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    neg-int v1, p1

    invoke-static {p0, v6}, Lorg/apache/james/mime4j/util/MimeUtil;->indexOfWsp(Ljava/lang/String;I)I

    move-result v0

    :goto_16
    if-ne v0, v3, :cond_28

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_28
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Lorg/apache/james/mime4j/util/MimeUtil;->indexOfWsp(Ljava/lang/String;I)I

    move-result v2

    sub-int v5, v2, v1

    if-le v5, v7, :cond_45

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    move v1, v0

    move v0, v2

    goto :goto_16

    :cond_45
    move v0, v1

    goto :goto_42
.end method

.method public static formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->RFC822_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    if-nez p1, :cond_16

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_11
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_11
.end method

.method public static getHeaderParams(Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/16 v5, 0x63

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_45

    const/4 v0, 0x0

    :goto_1d
    const-string v2, ""

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_113

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v13, v10

    move v8, v4

    move v0, v4

    move v1, v4

    :goto_3a
    if-ge v8, v13, :cond_fa

    aget-char v14, v10, v8

    sparse-switch v1, :sswitch_data_114

    :cond_41
    :goto_41
    :sswitch_41
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_3a

    :cond_45
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_1d

    :sswitch_5b
    const/16 v2, 0x3b

    if-ne v14, v2, :cond_41

    move v1, v4

    goto :goto_41

    :sswitch_61
    const/16 v1, 0x3d

    if-ne v14, v1, :cond_6e

    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Expected header param name, got \'=\'"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    move v1, v5

    goto :goto_41

    :cond_6e
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v3

    :sswitch_75
    const/16 v2, 0x3d

    if-ne v14, v2, :cond_83

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_81

    move v1, v5

    goto :goto_41

    :cond_81
    const/4 v1, 0x2

    goto :goto_41

    :cond_83
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    :sswitch_87
    sparse-switch v14, :sswitch_data_132

    move v2, v3

    move v1, v7

    :goto_8c
    if-eqz v2, :cond_41

    :sswitch_8e
    sparse-switch v14, :sswitch_data_140

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v4

    :goto_95
    if-eqz v2, :cond_41

    :sswitch_97
    sparse-switch v14, :sswitch_data_14e

    move v1, v5

    goto :goto_41

    :sswitch_9c
    move v2, v4

    goto :goto_8c

    :sswitch_9e
    const/4 v1, 0x4

    move v2, v4

    goto :goto_8c

    :sswitch_a1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    move v1, v6

    goto :goto_95

    :sswitch_bb
    move v1, v4

    goto :goto_41

    :sswitch_bd
    sparse-switch v14, :sswitch_data_15c

    if-eqz v0, :cond_c7

    const/16 v0, 0x5c

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c7
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v4

    goto/16 :goto_41

    :sswitch_cd
    if-nez v0, :cond_e5

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v6

    goto/16 :goto_41

    :cond_e5
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v4

    goto/16 :goto_41

    :sswitch_eb
    if-eqz v0, :cond_f2

    const/16 v2, 0x5c

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f2
    if-nez v0, :cond_f7

    move v0, v3

    goto/16 :goto_41

    :cond_f7
    move v0, v4

    goto/16 :goto_41

    :cond_fa
    if-ne v1, v7, :cond_113

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_113
    return-object v9

    :sswitch_data_114
    .sparse-switch
        0x0 -> :sswitch_61
        0x1 -> :sswitch_75
        0x2 -> :sswitch_87
        0x3 -> :sswitch_8e
        0x4 -> :sswitch_bd
        0x5 -> :sswitch_97
        0x63 -> :sswitch_5b
    .end sparse-switch

    :sswitch_data_132
    .sparse-switch
        0x9 -> :sswitch_9c
        0x20 -> :sswitch_9c
        0x22 -> :sswitch_9e
    .end sparse-switch

    :sswitch_data_140
    .sparse-switch
        0x9 -> :sswitch_a1
        0x20 -> :sswitch_a1
        0x3b -> :sswitch_a1
    .end sparse-switch

    :sswitch_data_14e
    .sparse-switch
        0x9 -> :sswitch_41
        0x20 -> :sswitch_41
        0x3b -> :sswitch_bb
    .end sparse-switch

    :sswitch_data_15c
    .sparse-switch
        0x22 -> :sswitch_cd
        0x5c -> :sswitch_eb
    .end sparse-switch
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v0, p1

    :goto_5
    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_13

    const/16 v3, 0x9

    if-ne v2, v3, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    move v0, v1

    goto :goto_13
.end method

.method public static isBase64Encoding(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMessage(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "message/rfc822"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isMultipart(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isQuotedPrintableEncoded(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "quoted-printable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static declared-synchronized nextCounterValue()I
    .registers 3

    const-class v1, Lorg/apache/james/mime4j/util/MimeUtil;

    monitor-enter v1

    :try_start_3
    sget v0, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_13

    const/16 v3, 0xa

    if-ne v2, v3, :cond_18

    :cond_13
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/util/MimeUtil;->unfold0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_17
    return-object p0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private static unfold0(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-lez p1, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v0, p1, 0x1

    :goto_15
    if-ge v0, v1, :cond_29

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_26

    const/16 v4, 0xa

    if-eq v3, v4, :cond_26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
