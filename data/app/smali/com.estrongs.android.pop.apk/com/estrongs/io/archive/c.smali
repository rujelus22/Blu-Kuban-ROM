.class public Lcom/estrongs/io/archive/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field public static final b:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field static final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x2014b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lcom/estrongs/io/archive/c;->a:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v1, 0x4034b50

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lcom/estrongs/io/archive/c;->b:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/estrongs/io/archive/c;->c:[B

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/io/archive/e;
    .registers 6

    sget-object v0, Lcom/estrongs/io/archive/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/estrongs/io/archive/b/a;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, p2}, Lcom/estrongs/io/archive/b/a;-><init>(Ljava/io/OutputStream;I)V

    :goto_17
    return-object v0

    :cond_18
    sget-object v0, Lcom/estrongs/io/archive/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/estrongs/io/archive/f;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_28
    new-instance v0, Lcom/estrongs/io/archive/a/b;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :cond_2e
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/estrongs/io/archive/e;"
        }
    .end annotation

    const-string v0, "archive_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "compress_level"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/a/h;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/io/archive/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/io/archive/h;
    .registers 6

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    :cond_10
    const/4 v0, 0x0

    if-nez p2, :cond_1a

    invoke-static {p0}, Lcom/estrongs/io/archive/a;->a(Ljava/lang/String;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_1a

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_32
    invoke-static {p0}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/estrongs/io/archive/aeszip/h;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/io/archive/aeszip/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_3e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad zip file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    new-instance v0, Lcom/estrongs/io/archive/a/a;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/a/a;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :cond_58
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v0, Lcom/estrongs/io/archive/rar/a;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/io/archive/rar/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method static a(Ljava/lang/String;)Z
    .registers 4

    const/4 v2, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [B

    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_16

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1c

    move-result v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-static {v0, v2}, Lcom/estrongs/io/archive/c;->a([BI)Z

    move-result v0

    return v0

    :catchall_16
    move-exception v0

    move-object v1, v2

    :goto_18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :catchall_1c
    move-exception v0

    goto :goto_18
.end method

.method public static a([BI)Z
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/io/archive/c;->b:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    sget-object v1, Lcom/estrongs/io/archive/c;->b:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/estrongs/io/archive/c;->a([B[B)Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Lcom/estrongs/io/archive/c;->c:[B

    invoke-static {p0, v1}, Lcom/estrongs/io/archive/c;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_1f
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private static a([B[B)Z
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_7

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/estrongs/io/archive/h;"
        }
    .end annotation

    const-string v1, "true"

    const-string v0, "reload"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "charset_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_1c

    :cond_1c
    return-object v0
.end method
