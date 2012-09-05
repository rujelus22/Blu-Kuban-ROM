.class public Ln/b;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field private static b:Z

.field private static c:I

.field private static final d:[J

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x15

    const/4 v0, 0x0

    sput-boolean v0, Ln/b;->b:Z

    sput v0, Ln/b;->c:I

    invoke-static {v1}, Ln/b;->a(I)[J

    move-result-object v0

    sput-object v0, Ln/b;->d:[J

    sget-object v0, Ln/b;->d:[J

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ln/b;->a(J)I

    move-result v0

    sput v0, Ln/b;->a:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(J)I
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_a

    const/16 v0, 0x40

    :cond_9
    return v0

    :cond_a
    :goto_a
    cmp-long v1, p0, v2

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    shr-long/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)J
    .registers 7

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_5
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_e} :catch_22

    :goto_e
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    :catch_22
    move-exception v1

    goto :goto_e
.end method

.method public static a(Lt/af;)J
    .registers 8

    const v5, 0x1fffffff

    invoke-virtual {p0}, Lt/af;->e()Lt/m;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lt/af;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    const/16 v2, 0x3a

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lt/af;->c()I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    const/16 v4, 0x1d

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lt/af;->d()I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    or-long/2addr v0, v2

    :goto_24
    return-wide v0

    :cond_25
    invoke-virtual {p0}, Lt/af;->b()I

    move-result v2

    if-nez v2, :cond_4c

    const-wide/16 v0, 0x0

    :goto_2d
    invoke-virtual {p0}, Lt/af;->c()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0}, Lt/af;->d()I

    move-result v5

    int-to-long v5, v5

    shl-long/2addr v5, v2

    add-long v2, v3, v5

    add-long/2addr v0, v2

    const-wide/high16 v2, -0x8000

    invoke-virtual {p0}, Lt/af;->e()Lt/m;

    move-result-object v4

    invoke-virtual {v4}, Lt/m;->hashCode()I

    move-result v4

    int-to-long v4, v4

    sget v6, Ln/b;->a:I

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_24

    :cond_4c
    sget-object v0, Ln/b;->d:[J

    add-int/lit8 v1, v2, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lam/e;)Lam/b;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_61
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_40

    :try_start_11
    new-instance v0, Lam/b;

    invoke-direct {v0, p2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v2}, Lam/b;->a(Ljava/io/InputStream;)Lam/b;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_71
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_79
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_19} :catch_77

    if-eqz v2, :cond_1e

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_6f

    :cond_1e
    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    move-object v0, v1

    :goto_21
    :try_start_21
    const-string v2, "MapsNavigation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readProtoFromFile failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ln/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_73

    if-eqz v0, :cond_3e

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_6b

    :cond_3e
    :goto_3e
    move-object v0, v1

    goto :goto_1e

    :catch_40
    move-exception v0

    move-object v2, v1

    :goto_42
    :try_start_42
    const-string v0, "MapsNavigation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readProtoFromFile failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ln/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_71

    if-eqz v2, :cond_5f

    :try_start_5c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_6d

    :cond_5f
    :goto_5f
    move-object v0, v1

    goto :goto_1e

    :catchall_61
    move-exception v0

    move-object v2, v1

    :goto_63
    if-eqz v2, :cond_68

    :try_start_65
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    goto :goto_68

    :catch_6b
    move-exception v0

    goto :goto_3e

    :catch_6d
    move-exception v0

    goto :goto_5f

    :catch_6f
    move-exception v1

    goto :goto_1e

    :catchall_71
    move-exception v0

    goto :goto_63

    :catchall_73
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_63

    :catch_77
    move-exception v0

    goto :goto_42

    :catch_79
    move-exception v0

    move-object v0, v2

    goto :goto_21
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    invoke-static {}, Ln/b;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_26
    return-object v0

    :cond_27
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    goto :goto_26
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Ln/b;->b:Z

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ln/c;

    invoke-direct {v0, p1}, Ln/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    return-void

    :cond_c
    array-length v2, v1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_b

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Ln/b;->b:Z

    if-eqz v0, :cond_d

    :goto_4
    new-instance v0, LC/k;

    invoke-direct {v0, p0, p1}, LC/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    return-void

    :cond_d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    if-eqz v0, :cond_14

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    sget v1, Ln/b;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ln/b;->c:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "DA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v3, "DA"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_41} :catch_4c

    :goto_41
    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p2, v3}, Lat/h;->a(I[BZZ)V

    goto :goto_14

    :catch_4c
    move-exception v2

    goto :goto_41
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Ln/b;->b:Z

    if-eqz v0, :cond_d

    :goto_4
    new-instance v0, LC/l;

    invoke-direct {v0, p1}, LC/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    return-void

    :cond_d
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lam/b;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v2, Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_14

    :try_start_c
    invoke-virtual {p1, v2}, Lam/b;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_41

    const/4 v0, 0x1

    :cond_13
    :goto_13
    return v0

    :catch_14
    move-exception v1

    move-object v2, v3

    :goto_16
    const-string v3, "MapsNavigation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeProtoToFile failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ln/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_13

    :try_start_34
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_3f

    :goto_37
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_13

    :catch_3f
    move-exception v1

    goto :goto_37

    :catch_41
    move-exception v1

    goto :goto_16
.end method

.method public static a(Ljava/io/File;Landroid/content/Context;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Ln/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return v2

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_17
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_2a
    if-ge v3, v5, :cond_4e

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-static {v6, p1}, Ln/b;->a(Ljava/io/File;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_40

    if-eqz v0, :cond_40

    move v0, v1

    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_40
    move v0, v2

    goto :goto_3d

    :cond_42
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4c

    if-eqz v0, :cond_4c

    move v0, v1

    goto :goto_3d

    :cond_4c
    move v0, v2

    goto :goto_3d

    :cond_4e
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_51
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_51} :catch_5a

    move-result v3

    if-eqz v3, :cond_58

    if-eqz v0, :cond_58

    :goto_56
    move v2, v1

    goto :goto_8

    :cond_58
    move v1, v2

    goto :goto_56

    :catch_5a
    move-exception v0

    move v1, v2

    goto :goto_56
.end method

.method static a(I)[J
    .registers 9

    const-wide/16 v6, 0x1

    add-int/lit8 v0, p0, 0x1

    new-array v3, v0, [J

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_9
    array-length v4, v3

    if-ge v0, v4, :cond_18

    mul-int/lit8 v4, v0, 0x2

    shl-long v4, v6, v4

    add-long/2addr v1, v4

    sub-long v4, v1, v6

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    return-object v3
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ln/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "testdata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lt/af;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lt/af;->e()Lt/m;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lt/m;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Ln/b;->b:Z

    if-eqz v0, :cond_d

    :goto_4
    new-instance v0, LC/k;

    invoke-direct {v0, p0, p1}, LC/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    return-void

    :cond_d
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static b()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ln/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "debug"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    sget-object v0, Ln/b;->e:Ljava/lang/String;

    if-nez v0, :cond_33

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "6030007"

    const-string v2, "6030007"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln/b;->e:Ljava/lang/String;

    :cond_33
    sget-object v0, Ln/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ln/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "Not initialized"

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {v0}, Lat/h;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ln/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "logging_id2"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "logging_id2"

    invoke-static {v0, v1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static f()J
    .registers 5

    const-wide/16 v0, 0x0

    invoke-static {}, Ln/b;->b()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    :try_start_9
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_1e} :catch_22

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    goto :goto_8

    :catch_22
    move-exception v2

    goto :goto_8
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/capabilities/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
