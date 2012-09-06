.class public Lcom/estrongs/android/a/a;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lorg/apache/commons/io/ByteOrderMark;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/a/a;->a:[Lorg/apache/commons/io/ByteOrderMark;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "GBK"

    :goto_14
    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v2, "Sharp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "UTF-8"

    :cond_20
    return-object v0

    :cond_21
    const-string v1, "TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v0, "BIG5"

    goto :goto_14

    :cond_2c
    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v0, "EUC-JP"

    goto :goto_14

    :cond_37
    const-string v1, "KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "EUC-KR"

    goto :goto_14

    :cond_42
    const-string v0, "UTF-8"

    goto :goto_14
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v1

    :cond_10
    const/4 v1, 0x4

    :try_start_11
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    aput v3, v1, v2

    invoke-static {v1}, Lcom/estrongs/android/a/a;->a([I)Lorg/apache/commons/io/ByteOrderMark;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_36} :catch_41

    move-result-object v1

    :try_start_37
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_5f

    :goto_3a
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lorg/apache/commons/io/ByteOrderMark;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_41
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_45
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    :cond_49
    const/16 v0, 0x3e8

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_4e
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5c

    invoke-static {v0, v1}, Lcom/estrongs/android/a/a;->a([BI)Ljava/lang/String;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_59} :catch_5b

    move-result-object v0

    goto :goto_3

    :catch_5b
    move-exception v0

    :cond_5c
    const-string v0, "UTF-8"

    goto :goto_3

    :catch_5f
    move-exception v0

    goto :goto_45
.end method

.method private static a([B)Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/a;)V

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lorg/mozilla/universalchardet/UniversalDetector;->a([BII)V

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->b()V

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->c()V

    return-object v1
.end method

.method public static a([BI)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/estrongs/android/a/a;->b([BI)[B

    move-result-object v1

    invoke-static {v1, v3, v4}, Lcom/estrongs/android/a/a;->a([BIZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/a/a;->b()I

    move-result v2

    invoke-static {v1, v2, v4}, Lcom/estrongs/android/a/a;->a([BIZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v1}, Lcom/estrongs/android/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/a/a;->a([BIZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "UTF-8"

    goto :goto_5
.end method

.method private static a([BIZ)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v2, Lorg/mozilla/a/a/h;

    invoke-direct {v2, p1}, Lorg/mozilla/a/a/h;-><init>(I)V

    new-instance v0, Lcom/estrongs/android/a/b;

    invoke-direct {v0}, Lcom/estrongs/android/a/b;-><init>()V

    invoke-virtual {v2, v0}, Lorg/mozilla/a/a/h;->a(Lorg/mozilla/a/a/q;)V

    array-length v3, p0

    invoke-virtual {v2, p0, v3, v4}, Lorg/mozilla/a/a/h;->a([BIZ)Z

    invoke-virtual {v2}, Lorg/mozilla/a/a/h;->b()V

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    if-eqz p2, :cond_21

    move-object v0, v1

    goto :goto_1c

    :cond_21
    if-nez p2, :cond_37

    invoke-virtual {v2}, Lorg/mozilla/a/a/h;->c()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v2}, Lorg/mozilla/a/a/h;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_37

    invoke-virtual {v2}, Lorg/mozilla/a/a/h;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    goto :goto_1c

    :cond_37
    move-object v0, v1

    goto :goto_1c
.end method

.method private static a([I)Lorg/apache/commons/io/ByteOrderMark;
    .registers 6

    sget-object v2, Lcom/estrongs/android/a/a;->a:[Lorg/apache/commons/io/ByteOrderMark;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-lt v1, v3, :cond_9

    const/4 v0, 0x0

    :cond_8
    return-object v0

    :cond_9
    aget-object v0, v2, v1

    invoke-static {p0, v0}, Lcom/estrongs/android/a/a;->a([ILorg/apache/commons/io/ByteOrderMark;)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method private static a([ILorg/apache/commons/io/ByteOrderMark;)Z
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    move-result v2

    if-lt v0, v2, :cond_a

    const/4 v1, 0x1

    :cond_9
    return v1

    :cond_a
    invoke-virtual {p1, v0}, Lorg/apache/commons/io/ByteOrderMark;->get(I)I

    move-result v2

    aget v3, p0, v0

    if-ne v2, v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static a([B[B)[B
    .registers 6

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b()I
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x2

    :goto_11
    return v0

    :cond_12
    const-string v1, "TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x4

    goto :goto_11

    :cond_1c
    const-string v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    goto :goto_11

    :cond_26
    const-string v1, "KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x5

    goto :goto_11

    :cond_30
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b([BI)[B
    .registers 9

    const/16 v0, 0x3e8

    const/4 v2, 0x0

    if-lt p1, v0, :cond_6

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    div-int v5, v0, p1

    const/4 v0, 0x1

    if-eq v5, v0, :cond_5

    mul-int v0, p1, v5

    new-array v0, v0, [B

    move v4, v2

    :goto_10
    if-lt v4, v5, :cond_14

    move-object p0, v0

    goto :goto_5

    :cond_14
    mul-int v1, v4, p1

    move v3, v1

    move v1, v2

    :goto_18
    add-int/lit8 v6, v4, 0x1

    mul-int/2addr v6, p1

    if-lt v3, v6, :cond_21

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_10

    :cond_21
    aget-byte v6, p0, v1

    aput-byte v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method
