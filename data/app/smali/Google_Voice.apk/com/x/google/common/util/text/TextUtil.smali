.class public final Lcom/x/google/common/util/text/TextUtil;
.super Ljava/lang/Object;


# static fields
.field static final FALSE:Ljava/lang/Boolean; = null

.field public static final HTTPS_PREFIX:Ljava/lang/String; = "https://"

.field public static final HTTP_PREFIX:Ljava/lang/String; = "http://"

.field static final TRUE:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/x/google/common/util/text/TextUtil;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/x/google/common/util/text/TextUtil;->FALSE:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendTextWithSeparator(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/x/google/common/util/text/TextUtil;->splitVersion(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {p1}, Lcom/x/google/common/util/text/TextUtil;->splitVersion(Ljava/lang/String;)[I

    move-result-object v5

    array-length v3, v4

    array-length v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v2

    :goto_12
    if-ge v3, v6, :cond_26

    aget v7, v4, v3

    aget v8, v5, v3

    if-ge v7, v8, :cond_1b

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    aget v7, v4, v3

    aget v8, v5, v3

    if-le v7, v8, :cond_23

    move v0, v1

    goto :goto_1a

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    array-length v3, v4

    array-length v6, v5

    if-ne v3, v6, :cond_2c

    move v0, v2

    goto :goto_1a

    :cond_2c
    array-length v2, v4

    array-length v3, v5

    if-le v2, v3, :cond_1a

    move v0, v1

    goto :goto_1a
.end method

.method public static concat([Ljava/lang/String;C)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_26

    aget-object v2, p0, v0

    if-eqz v2, :cond_23

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1e
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concatenateLinesWithNewlineDelimiter(Ljava/util/Vector;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    if-lez v0, :cond_13

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e6ToString(I)Ljava/lang/String;
    .registers 6

    const v4, 0xf4240

    div-int v0, p0, v4

    mul-int v1, v0, v4

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-gez p0, :cond_1b

    if-nez v0, :cond_1b

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-lez v1, :cond_33

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int v0, v1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_18

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-static {p0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d

    :cond_1c
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public static equals(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static formatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/x/google/common/util/text/TextUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/x/google/common/util/text/TextUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p0, v0}, Lcom/x/google/common/util/text/TextUtil;->formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v6, -0x1

    const/16 v5, 0x7b

    const-string v0, "${I18N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-object p0

    :cond_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_1a
    if-eq v0, v6, :cond_df

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_df

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_40

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :goto_38
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1a

    :cond_40
    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v6, :cond_4f

    sub-int v3, v1, v0

    const/4 v4, 0x2

    if-gt v3, v4, :cond_4f

    if-nez v1, :cond_72

    :cond_4f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextUtil.formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    :try_start_7d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_80} :catch_8c

    move-result v1

    if-ltz v1, :cond_b6

    array-length v3, p1

    if-ge v1, v3, :cond_b6

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    :catch_8c
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextUtil.formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" tag(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextUtil.formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" param("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_df
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_b
.end method

.method public static getDomainForUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, ""

    :cond_9
    return-object p0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_20
    :goto_20
    const/4 v0, 0x3

    new-array v2, v0, [C

    fill-array-data v2, :array_52

    move v0, v1

    :goto_27
    array-length v3, v2

    if-ge v0, v3, :cond_9

    aget-char v3, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3a
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "https://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    nop

    :array_52
    .array-data 0x2
        0x2ft 0x0t
        0x23t 0x0t
        0x3ft 0x0t
    .end array-data
.end method

.method public static getFileBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_e
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    return-object p0
.end method

.method public static getStrippedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_27

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2a

    :cond_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static getUrlTextRemainderFromDescription(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/16 v8, 0x2f

    const/16 v3, 0x20

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_14

    move-object v0, v1

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_5d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_22
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    aget-object v3, v1, v6

    const-string v4, "http://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    aget-object v3, v1, v5

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v7, :cond_4c

    aget-object v3, v1, v5

    aget-object v4, v1, v5

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    :cond_4c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_5b

    const/4 v3, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    :cond_5b
    move-object v0, v1

    goto :goto_13

    :cond_5d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_22
.end method

.method public static indexOf(CILjava/lang/StringBuffer;)I
    .registers 4

    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge p1, v0, :cond_10

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, p0, :cond_d

    :goto_c
    return p1

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_10
    const/4 p1, -0x1

    goto :goto_c
.end method

.method public static indexOf(CLjava/lang/StringBuffer;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/x/google/common/util/text/TextUtil;->indexOf(CILjava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public static indexOfCaseInsensitive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_13

    move v0, v1

    goto :goto_4

    :cond_13
    if-lt v5, v6, :cond_4

    move v2, v1

    :goto_16
    sub-int v3, v5, v6

    if-gt v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_52

    :cond_2e
    const/4 v3, 0x1

    move v4, v1

    :goto_30
    if-ge v4, v6, :cond_4b

    add-int v7, v2, v4

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_4f

    add-int v7, v2, v4

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_4f

    move v3, v1

    :cond_4b
    if-eqz v3, :cond_52

    move v0, v2

    goto :goto_4

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public static isCharacter(I)Z
    .registers 2

    if-ltz p0, :cond_9

    const v0, 0xffff

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isLowerCase(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_16

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_13

    :goto_12
    return v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static isPrintableAscii(C)Z
    .registers 2

    const/16 v0, 0x1f

    if-ge v0, p0, :cond_a

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUpperCase(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_16

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_13

    :goto_12
    return v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public static isWhitespace(C)Z
    .registers 2

    const/16 v0, 0x9

    if-gt v0, p0, :cond_8

    const/16 v0, 0xd

    if-le p0, v0, :cond_38

    :cond_8
    const/16 v0, 0x20

    if-eq p0, v0, :cond_38

    const/16 v0, 0x85

    if-eq p0, v0, :cond_38

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_38

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_38

    const/16 v0, 0x180e

    if-eq p0, v0, :cond_38

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_24

    const/16 v0, 0x200a

    if-le p0, v0, :cond_38

    :cond_24
    const/16 v0, 0x2028

    if-eq p0, v0, :cond_38

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_38

    const/16 v0, 0x202f

    if-eq p0, v0, :cond_38

    const/16 v0, 0x205f

    if-eq p0, v0, :cond_38

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_3a

    :cond_38
    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public static join(Ljava/util/Enumeration;C)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/x/google/common/util/text/TextUtil;->join(Ljava/util/Enumeration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Enumeration;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_15
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_15

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static join(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    if-eqz v0, :cond_18

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :pswitch_22
    const-string v0, ""

    :goto_24
    return-object v0

    :pswitch_25
    invoke-virtual {p0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public static join([Ljava/lang/String;C)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    array-length v1, p0

    packed-switch v1, :pswitch_data_26

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_20

    if-eqz v0, :cond_12

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_12
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :pswitch_1a
    const-string v0, ""

    :goto_1c
    return-object v0

    :pswitch_1d
    aget-object v0, p0, v0

    goto :goto_1c

    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    array-length v1, p0

    packed-switch v1, :pswitch_data_26

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_20

    if-eqz v0, :cond_12

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :pswitch_1a
    const-string v0, ""

    :goto_1c
    return-object v0

    :pswitch_1d
    aget-object v0, p0, v0

    goto :goto_1c

    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public static lastIndexOf(CILjava/lang/StringBuffer;)I
    .registers 5

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_a
    if-ltz v0, :cond_16

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p0, :cond_13

    :goto_12
    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public static lastIndexOf(CLjava/lang/StringBuffer;)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, v0, p1}, Lcom/x/google/common/util/text/TextUtil;->lastIndexOf(CILjava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_7

    :goto_6
    return-object p0

    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, p1, v0

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_1b

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static matchesPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/x/google/common/util/text/TextUtil;->splitGlobPattern(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/x/google/common/util/text/TextUtil;->matchesPattern(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matchesPattern(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/x/google/common/util/text/TextUtil;->matchesPattern(Ljava/lang/String;[Ljava/lang/String;II)Z

    move-result v0

    :cond_14
    return v0
.end method

.method private static matchesPattern(Ljava/lang/String;[Ljava/lang/String;II)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    if-ne p3, v2, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne p2, v2, :cond_c

    move v1, v0

    :cond_c
    :goto_c
    return v1

    :cond_d
    aget-object v2, p1, p3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, p3, 0x1

    aget-object v3, p1, v3

    sparse-switch v2, :sswitch_data_56

    goto :goto_c

    :goto_1b
    :sswitch_1b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    :cond_25
    if-ltz p2, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    add-int/lit8 v4, p3, 0x2

    invoke-static {p0, p1, v2, v4}, Lcom/x/google/common/util/text/TextUtil;->matchesPattern(Ljava/lang/String;[Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_52

    move v1, v0

    goto :goto_c

    :sswitch_36
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/x/google/common/util/text/TextUtil;->matchesPattern(Ljava/lang/String;[Ljava/lang/String;II)Z

    move-result v1

    goto :goto_c

    :cond_52
    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    nop

    :sswitch_data_56
    .sparse-switch
        0x2a -> :sswitch_1b
        0x3f -> :sswitch_36
    .end sparse-switch
.end method

.method public static normalizeWhitespace(Ljava/lang/String;ZZZ)Ljava/lang/String;
    .registers 14

    const/16 v9, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v0, v2

    move v1, p1

    :goto_13
    if-ge v0, v7, :cond_4b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_3b

    move v5, v3

    :goto_1c
    if-gt v8, v9, :cond_22

    if-eqz v5, :cond_3d

    if-eqz p3, :cond_3d

    :cond_22
    move v4, v3

    :goto_23
    if-eqz v4, :cond_44

    if-eqz v5, :cond_3f

    add-int/lit8 v4, v7, -0x1

    if-ge v0, v4, :cond_38

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3b
    move v5, v2

    goto :goto_1c

    :cond_3d
    move v4, v2

    goto :goto_23

    :cond_3f
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_38

    :cond_44
    if-nez v1, :cond_38

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto :goto_38

    :cond_4b
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz p2, :cond_5a

    if-eqz v1, :cond_5a

    if-lez v0, :cond_5a

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_5a
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static pad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_7

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v1, p1, :cond_16

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static pad(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_23
    return-object p0
.end method

.method public static parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Lcom/x/google/common/util/text/TextUtil;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_f
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/x/google/common/util/text/TextUtil;->FALSE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static parseBoolean(Ljava/lang/String;Z)Z
    .registers 3

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return p1

    :cond_3
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x1

    goto :goto_2

    :cond_d
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static parseDecimal(Ljava/lang/String;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v6, 0x30

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_12
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_18
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_7b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-nez p1, :cond_36

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_62

    if-nez p1, :cond_5c

    :goto_35
    return v1

    :cond_36
    if-le v0, p1, :cond_40

    add-int/lit8 v0, v2, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v0, p1

    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2d

    :cond_5c
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_62
    if-ge v0, p1, :cond_6f

    if-ne v2, v5, :cond_74

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0, v6}, Lcom/x/google/common/util/text/TextUtil;->pad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :cond_6f
    :goto_6f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_35

    :cond_74
    add-int v0, v2, p1

    invoke-static {p0, v0, v6}, Lcom/x/google/common/util/text/TextUtil;->pad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_6f

    :cond_7b
    move v0, v1

    goto :goto_2d
.end method

.method public static parseInteger(Ljava/lang/String;I)I
    .registers 3

    if-eqz p0, :cond_6

    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_7

    move-result p1

    :cond_6
    :goto_6
    return p1

    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public static removeInterpolatedIcons(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_20

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v1

    move v2, v1

    :cond_b
    :goto_b
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_37

    move v3, v1

    :goto_13
    if-ge v3, v4, :cond_27

    add-int v6, v0, v3

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_27
    add-int v3, v0, v4

    invoke-virtual {p2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v5

    if-nez v4, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_37
    return v2
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/x/google/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v2, v1

    :goto_a
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1d

    if-ge v0, v3, :cond_1d

    add-int/lit8 v2, v2, 0x1

    if-ltz v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    :cond_18
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_a

    :cond_1d
    add-int/lit8 v0, v2, 0x1

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    :goto_22
    if-ge v0, v2, :cond_36

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_36
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    return-object v3
.end method

.method public static splitAndDropEmpty(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_8

    :cond_5
    new-array v0, v0, [Ljava/lang/String;

    :goto_7
    return-object v0

    :cond_8
    if-eqz p2, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_7

    :cond_17
    invoke-static {p0, p1}, Lcom/x/google/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_20
    array-length v3, v1

    if-ge v0, v3, :cond_3d

    if-eqz p2, :cond_2d

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    :cond_2d
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3a

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3d
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public static splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/x/google/common/util/text/TextUtil;->splitAndDropEmpty(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitGlobPattern(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v2

    :goto_10
    if-ge v1, v4, :cond_44

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_62

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    :cond_1d
    :goto_1d
    add-int/lit8 v1, v0, 0x1

    goto :goto_10

    :sswitch_20
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v6, 0x3f

    if-ne v0, v6, :cond_35

    const-string v0, "?"

    :goto_2d
    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    goto :goto_1d

    :cond_35
    const-string v0, "*"

    goto :goto_2d

    :sswitch_38
    add-int/lit8 v0, v1, 0x1

    if-ge v0, v4, :cond_1d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1d

    :cond_44
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    :goto_52
    array-length v0, v4

    if-ge v1, v0, :cond_61

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    :cond_61
    return-object v4

    :sswitch_data_62
    .sparse-switch
        0x2a -> :sswitch_20
        0x3f -> :sswitch_20
        0x5c -> :sswitch_38
    .end sparse-switch
.end method

.method public static splitVersion(Ljava/lang/String;)[I
    .registers 5

    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lcom/x/google/common/util/text/TextUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_a
    array-length v3, v2

    if-ge v0, v3, :cond_39

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2e

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing integer part in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_39
    return-object v2
.end method

.method public static toSafeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v0, 0x0

    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_25

    aget-char v3, v2, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_22

    aget-char v3, v2, v0

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_22

    aget-char v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_b
    return-object p0
.end method

.method public static truncateBytes(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/x/google/common/util/text/TextUtil;->truncateBytes(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    const-string v1, "UNKNOWN"

    invoke-static {v1, v0}, Lcom/x/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_5
.end method

.method public static truncateBytes(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p2, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_7
    array-length v0, v0

    if-le v0, p1, :cond_53

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v4

    :goto_f
    if-eq v2, v1, :cond_54

    add-int v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_21
    array-length v5, v0

    if-le v5, p1, :cond_34

    add-int/lit8 v0, v3, -0x1

    move v1, v2

    :goto_27
    move v2, v1

    move v1, v0

    goto :goto_f

    :cond_2a
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_7

    :cond_2f
    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_21

    :cond_34
    array-length v0, v0

    if-ge v0, p1, :cond_3a

    move v0, v1

    move v1, v3

    goto :goto_27

    :cond_3a
    move v0, v3

    :goto_3b
    if-lez v0, :cond_4f

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd800

    if-lt v1, v2, :cond_4f

    const v2, 0xdbff

    if-gt v1, v2, :cond_4f

    add-int/lit8 v0, v0, -0x1

    :cond_4f
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_53
    return-object p0

    :cond_54
    move v0, v1

    goto :goto_3b
.end method
