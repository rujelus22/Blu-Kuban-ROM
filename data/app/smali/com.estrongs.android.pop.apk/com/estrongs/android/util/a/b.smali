.class public Lcom/estrongs/android/util/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/text/DecimalFormat;

.field public static final b:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/util/a/b;->a:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/util/a/b;->b:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static a(J)J
    .registers 9

    const-wide/32 v0, 0x40000000

    const-wide/32 v2, 0x100000

    const-wide/16 v4, 0x400

    cmp-long v6, p0, v0

    if-ltz v6, :cond_d

    :goto_c
    return-wide v0

    :cond_d
    cmp-long v0, p0, v2

    if-ltz v0, :cond_13

    move-wide v0, v2

    goto :goto_c

    :cond_13
    cmp-long v0, p0, v4

    if-ltz v0, :cond_19

    move-wide v0, v4

    goto :goto_c

    :cond_19
    const-wide/16 v0, 0x1

    goto :goto_c
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JJ)Ljava/lang/String;
    .registers 9

    long-to-double v0, p0

    long-to-double v2, p2

    sget-object v4, Lcom/estrongs/android/util/a/b;->a:Ljava/text/DecimalFormat;

    div-double/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_7
    array-length v2, p0

    if-lt v0, v2, :cond_f

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    aget-byte v2, p0, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    move v3, v2

    move v2, v1

    :goto_17
    if-ltz v3, :cond_2f

    const/16 v4, 0x9

    if-gt v3, v4, :cond_2f

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_23
    aget-byte v3, p0, v0

    and-int/lit8 v4, v3, 0xf

    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x1

    if-lt v2, v6, :cond_38

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2f
    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_23

    :cond_38
    move v2, v3

    move v3, v4

    goto :goto_17
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/InputStream;Ljava/io/File;Lcom/estrongs/android/util/a/a;)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;Lcom/estrongs/android/util/a/a;)V
    .registers 8

    const/4 v0, 0x0

    const/high16 v1, 0x8

    new-array v1, v1, [B

    :try_start_5
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_34

    :goto_11
    const/4 v3, 0x0

    :try_start_12
    array-length v4, v1

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_2d

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    :cond_1a
    check-cast v0, [B

    invoke-static {v2}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    return-void

    :cond_20
    if-eqz p2, :cond_28

    :try_start_22
    invoke-interface {p2}, Lcom/estrongs/android/util/a/a;->a()Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_28
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2d

    goto :goto_11

    :catchall_2d
    move-exception v1

    :goto_2e
    check-cast v0, [B

    invoke-static {v2}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    throw v1

    :catchall_34
    move-exception v1

    move-object v2, v0

    goto :goto_2e
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/android/util/a/a;Lcom/estrongs/android/util/a/c;)V
    .registers 7

    const/4 v2, 0x0

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_28

    :goto_a
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_34

    move-result v2

    if-gtz v2, :cond_14

    :cond_10
    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    :goto_13
    return-void

    :cond_14
    if-eqz p1, :cond_1c

    :try_start_16
    invoke-interface {p1}, Lcom/estrongs/android/util/a/a;->a()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_1c
    const/4 v3, 0x0

    invoke-interface {p2, v0, v3, v2}, Lcom/estrongs/android/util/a/c;->a([BII)V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_20} :catch_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_34

    goto :goto_a

    :catch_21
    move-exception v0

    :goto_22
    :try_start_22
    throw v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    :goto_24
    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_28
    move-exception v0

    move-object v1, v2

    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_23

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/Closeable;)V

    goto :goto_13

    :catchall_31
    move-exception v0

    move-object v1, v2

    goto :goto_24

    :catch_34
    move-exception v0

    goto :goto_2a

    :catch_36
    move-exception v0

    move-object v1, v2

    goto :goto_22
.end method

.method public static a(Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->a([Ljava/io/File;)Z

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static a([Ljava/io/File;)Z
    .registers 5

    if-eqz p0, :cond_6

    array-length v1, p0

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v1, :cond_8

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_8
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v2}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/File;)Z

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_13
.end method

.method public static b(J)Ljava/lang/String;
    .registers 4

    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_a

    const-string v0, "GB"

    :goto_9
    return-object v0

    :cond_a
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_14

    const-string v0, "MB"

    goto :goto_9

    :cond_14
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1d

    const-string v0, "KB"

    goto :goto_9

    :cond_1d
    const-string v0, "B"

    goto :goto_9
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method public static c(J)Ljava/lang/String;
    .registers 10

    long-to-double v0, p0

    invoke-static {p0, p1}, Lcom/estrongs/android/util/a/b;->a(J)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/estrongs/android/util/a/b;->a:Ljava/text/DecimalFormat;

    long-to-double v6, v2

    div-double/2addr v0, v6

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/estrongs/android/util/a/b;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x9

    new-array v2, v1, [C

    fill-array-data v2, :array_1a

    array-length v3, v2

    move v1, v0

    :goto_a
    if-lt v1, v3, :cond_e

    const/4 v0, 0x1

    :cond_d
    return v0

    :cond_e
    aget-char v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    nop

    :array_1a
    .array-data 0x2
        0x2at 0x0t
        0x22t 0x0t
        0x3at 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7ct 0x0t
        0x5ct 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public static d(J)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/estrongs/android/util/a/b;->b:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x8

    new-array v2, v1, [C

    fill-array-data v2, :array_1a

    array-length v3, v2

    move v1, v0

    :goto_a
    if-lt v1, v3, :cond_e

    const/4 v0, 0x1

    :cond_d
    return v0

    :cond_e
    aget-char v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    nop

    :array_1a
    .array-data 0x2
        0x2at 0x0t
        0x22t 0x0t
        0x3at 0x0t
        0x3ft 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7ct 0x0t
        0x5ct 0x0t
    .end array-data
.end method

.method public static e(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/.estrongs/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1d
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/.estrongs/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-object v0
.end method

.method public static g(Ljava/lang/String;)[J
    .registers 6

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    aput-wide v3, v1, v2

    return-object v1
.end method
