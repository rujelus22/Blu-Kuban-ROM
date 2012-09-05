.class public final Lcom/coremobility/integration/file/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/o;


# static fields
.field private static a:Lcom/coremobility/integration/file/a;

.field private static b:Z

.field private static c:Ljava/lang/Object;

.field private static d:Lcom/coremobility/integration/app/CM_Service;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/coremobility/integration/file/a;->a:Lcom/coremobility/integration/file/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/file/a;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coremobility/integration/file/a;->c:Ljava/lang/Object;

    sput-object v1, Lcom/coremobility/integration/file/a;->d:Lcom/coremobility/integration/app/CM_Service;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/coremobility/integration/h;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return v0

    :catch_e
    move-exception v1

    const/16 v2, 0x17

    const-string v3, "CM_File.Close Ex: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xe

    goto :goto_d
.end method

.method public static a(Lcom/coremobility/integration/h;II)I
    .registers 11

    const/16 v7, 0x17

    const/16 v0, 0xe

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_12

    const-string v2, "Invalid hFile"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_11
    return v0

    :cond_12
    const/4 v2, 0x2

    if-ne p2, v2, :cond_24

    :try_start_15
    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    :goto_1d
    iget-object v4, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    move v0, v1

    goto :goto_11

    :cond_24
    if-ne p2, v6, :cond_2f

    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_31

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    goto :goto_1d

    :cond_2f
    int-to-long v2, p1

    goto :goto_1d

    :catch_31
    move-exception v2

    const-string v3, "CM_File.Seek Ex: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v7, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public static a(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I
    .registers 8

    const/16 v5, 0x17

    const/16 v0, 0xe

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_11

    const-string v2, "Invalid hFile"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return v0

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p1, Lcom/coremobility/integration/r;->a:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1c

    move v0, v1

    goto :goto_10

    :catch_1c
    move-exception v2

    const-string v3, "CM_File.GetPosition Ex: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v5, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public static a(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I
    .registers 10

    const/16 v5, 0x17

    const/16 v0, 0xe

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_13

    iput v1, p3, Lcom/coremobility/integration/r;->a:I

    const-string v2, "Invalid hFile"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_12
    return v0

    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    iget v3, p3, Lcom/coremobility/integration/r;->a:I

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1c

    move v0, v1

    goto :goto_12

    :catch_1c
    move-exception v2

    const-string v3, "CM_File.Write Ex: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v5, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public static a(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I
    .registers 9

    const/16 v5, 0x17

    const/16 v0, 0xe

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_13

    iput v1, p2, Lcom/coremobility/integration/r;->a:I

    const-string v2, "Invalid hFile"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_12
    return v0

    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    iget v4, p2, Lcom/coremobility/integration/r;->a:I

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    const/4 v2, 0x0

    iput v2, p2, Lcom/coremobility/integration/r;->a:I

    const/4 v0, 0x6

    goto :goto_12

    :cond_24
    iput v2, p2, Lcom/coremobility/integration/r;->a:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_28

    move v0, v1

    goto :goto_12

    :catch_28
    move-exception v2

    const-string v3, "CM_File.Read Ex: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v5, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public static a(Lcom/coremobility/integration/s;)I
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v2

    int-to-long v4, v1

    mul-long v1, v2, v4

    iput-wide v1, p0, Lcom/coremobility/integration/s;->a:J
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    :goto_24
    return v0

    :catch_25
    move-exception v1

    const/16 v2, 0x17

    const-string v3, "CM_File.GetFileSystemFreeSpace Ex: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xe

    goto :goto_24
.end method

.method public static a(Ljava/lang/String;)I
    .registers 11

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v4, Lcom/coremobility/integration/s;

    invoke-direct {v4, v0}, Lcom/coremobility/integration/s;-><init>(B)V

    new-instance v5, Lcom/coremobility/integration/s;

    invoke-direct {v5, v0}, Lcom/coremobility/integration/s;-><init>(B)V

    :try_start_c
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_a0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_ca

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    move v2, v0

    :cond_16
    if-eqz v2, :cond_40

    :try_start_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_ce

    move v3, v0

    :goto_1e
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_c8
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_71

    move-result v1

    invoke-static {v5}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/s;)I

    move-result v6

    if-nez v2, :cond_3d

    if-nez v3, :cond_3d

    if-nez v6, :cond_3d

    iget-wide v2, v5, Lcom/coremobility/integration/s;->a:J

    iget-wide v4, v4, Lcom/coremobility/integration/s;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3d

    sget-object v2, Lcom/coremobility/integration/file/a;->d:Lcom/coremobility/integration/app/CM_Service;

    if-eqz v2, :cond_3d

    const-string v2, "com.coremobility.app.vnotes.FILE_SPACE_FREED"

    invoke-static {v2}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    if-eqz v1, :cond_c0

    :goto_3f
    return v0

    :cond_40
    :try_start_40
    invoke-static {v4}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/s;)I
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_ce

    move-result v3

    :try_start_44
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_44 .. :try_end_70} :catchall_c8
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_70} :catch_71

    goto :goto_1e

    :catch_71
    move-exception v1

    :goto_72
    const/16 v6, 0x17

    :try_start_74
    const-string v7, "CM_File.Delete Ex: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_74 .. :try_end_83} :catchall_c8

    invoke-static {v5}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/s;)I

    move-result v1

    if-nez v2, :cond_d1

    if-nez v3, :cond_d1

    if-nez v1, :cond_d1

    iget-wide v1, v5, Lcom/coremobility/integration/s;->a:J

    iget-wide v3, v4, Lcom/coremobility/integration/s;->a:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_d1

    sget-object v1, Lcom/coremobility/integration/file/a;->d:Lcom/coremobility/integration/app/CM_Service;

    if-eqz v1, :cond_9e

    const-string v1, "com.coremobility.app.vnotes.FILE_SPACE_FREED"

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :cond_9e
    move v1, v0

    goto :goto_3d

    :catchall_a0
    move-exception v1

    move v2, v0

    move v3, v0

    move-object v0, v1

    :goto_a4
    invoke-static {v5}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/s;)I

    move-result v1

    if-nez v2, :cond_bf

    if-nez v3, :cond_bf

    if-nez v1, :cond_bf

    iget-wide v1, v5, Lcom/coremobility/integration/s;->a:J

    iget-wide v3, v4, Lcom/coremobility/integration/s;->a:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_bf

    sget-object v1, Lcom/coremobility/integration/file/a;->d:Lcom/coremobility/integration/app/CM_Service;

    if-eqz v1, :cond_bf

    const-string v1, "com.coremobility.app.vnotes.FILE_SPACE_FREED"

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :cond_bf
    throw v0

    :cond_c0
    const/16 v0, 0xe

    goto/16 :goto_3f

    :catchall_c4
    move-exception v1

    move v3, v0

    move-object v0, v1

    goto :goto_a4

    :catchall_c8
    move-exception v0

    goto :goto_a4

    :catch_ca
    move-exception v1

    move v2, v0

    move v3, v0

    goto :goto_72

    :catch_ce
    move-exception v1

    move v3, v0

    goto :goto_72

    :cond_d1
    move v1, v0

    goto/16 :goto_3d
.end method

.method public static a(Ljava/lang/String;Lcom/coremobility/integration/h;)I
    .registers 8

    const/16 v5, 0x17

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_13

    const/16 v1, 0x17

    :try_start_8
    const-string v2, "Invalid hFile"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x9

    :goto_12
    return v0

    :cond_13
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3b

    move v1, v0

    :goto_1d
    if-eqz v1, :cond_3d

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, p0

    :goto_31
    if-eqz p0, :cond_39

    invoke-static {v2}, Lcom/coremobility/integration/file/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    :cond_39
    const/4 v0, 0x4

    goto :goto_12

    :cond_3b
    move v1, v3

    goto :goto_1d

    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    goto :goto_31

    :cond_66
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6f} :catch_70

    goto :goto_12

    :catch_70
    move-exception v1

    const-string v2, "CM_File.Open Ex: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xe

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Lcom/coremobility/integration/q;)I
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p1, Lcom/coremobility/integration/q;->a:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_34

    :goto_33
    return v0

    :catch_34
    move-exception v1

    const/16 v2, 0x17

    const-string v3, "CM_File.FileExists Ex: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xe

    goto :goto_33
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/16 v1, 0xe

    const/4 v0, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5e} :catch_62

    move-result v2

    if-eqz v2, :cond_75

    :goto_61
    return v0

    :catch_62
    move-exception v2

    const/16 v3, 0x17

    const-string v4, "CM_File.Rename Ex: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_61

    :cond_75
    move v0, v1

    goto :goto_61
.end method

.method public static a(Ljava/lang/String;Z)I
    .registers 11

    const/16 v8, 0x17

    const/4 v1, 0x0

    new-instance v0, Lcom/coremobility/integration/q;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/q;-><init>(B)V

    invoke-static {p0, v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/q;)I

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "Unable to check Welcome vnote file availability, assume available"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/coremobility/integration/q;->a:Z

    :cond_18
    iget-boolean v0, v0, Lcom/coremobility/integration/q;->a:Z

    if-nez v0, :cond_8f

    if-eqz p1, :cond_2b

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->f()Ljava/io/InputStream;

    move-result-object v0

    move-object v3, v0

    :goto_27
    if-nez v3, :cond_35

    const/4 v0, 0x2

    :cond_2a
    :goto_2a
    return v0

    :cond_2b
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->e()Ljava/io/InputStream;

    move-result-object v0

    move-object v3, v0

    goto :goto_27

    :cond_35
    new-instance v4, Lcom/coremobility/integration/h;

    invoke-direct {v4}, Lcom/coremobility/integration/h;-><init>()V

    invoke-static {p0, v4}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    if-nez v0, :cond_2a

    :try_start_40
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    const/16 v0, 0x800

    new-array v6, v0, [B

    move v0, v1

    :goto_49
    if-ge v0, v5, :cond_8f

    const/4 v2, 0x0

    const/16 v7, 0x800

    invoke-virtual {v3, v6, v2, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int v2, v0, v7

    new-instance v0, Lcom/coremobility/integration/r;

    invoke-direct {v0, v7}, Lcom/coremobility/integration/r;-><init>(I)V

    const/4 v7, 0x0

    invoke-static {v4, v6, v7, v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {v4}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    invoke-static {p0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_66} :catch_67

    goto :goto_2a

    :catch_67
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    invoke-static {p0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    const/16 v0, 0xe

    goto :goto_2a

    :cond_8d
    move v0, v2

    goto :goto_49

    :cond_8f
    move v0, v1

    goto :goto_2a
.end method

.method public static a()Lcom/coremobility/integration/file/a;
    .registers 1

    sget-object v0, Lcom/coremobility/integration/file/a;->a:Lcom/coremobility/integration/file/a;

    if-nez v0, :cond_11

    new-instance v0, Lcom/coremobility/integration/file/a;

    invoke-direct {v0}, Lcom/coremobility/integration/file/a;-><init>()V

    sput-object v0, Lcom/coremobility/integration/file/a;->a:Lcom/coremobility/integration/file/a;

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/file/a;->d:Lcom/coremobility/integration/app/CM_Service;

    :cond_11
    sget-object v0, Lcom/coremobility/integration/file/a;->a:Lcom/coremobility/integration/file/a;

    return-object v0
.end method

.method public static a(Lcom/coremobility/integration/p;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    iget-object v1, p0, Lcom/coremobility/integration/p;->b:[Ljava/lang/String;

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/coremobility/integration/p;->a:I

    iget-object v2, p0, Lcom/coremobility/integration/p;->b:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/coremobility/integration/p;->b:[Ljava/lang/String;

    iget v2, p0, Lcom/coremobility/integration/p;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/integration/p;->a:I

    aget-object v0, v1, v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_10

    :catch_1c
    move-exception v1

    goto :goto_10
.end method

.method protected static a(Z)V
    .registers 3

    sget-object v1, Lcom/coremobility/integration/file/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sput-boolean p0, Lcom/coremobility/integration/file/a;->b:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I
    .registers 8

    const/16 v5, 0x17

    const/16 v0, 0xe

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_11

    const-string v2, "Invalid hFile"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return v0

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p1, Lcom/coremobility/integration/r;->a:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1c

    move v0, v1

    goto :goto_10

    :catch_1c
    move-exception v2

    const-string v3, "CM_File.GetSize Ex: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v5, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public static b(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I

    move-result v0

    return v0
.end method

.method public static b()Lcom/coremobility/integration/p;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    new-instance v0, Lcom/coremobility/integration/p;

    invoke-direct {v0}, Lcom/coremobility/integration/p;-><init>()V

    iput-object v2, v0, Lcom/coremobility/integration/p;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/coremobility/integration/p;->a:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    :goto_26
    return-object v0

    :catch_27
    move-exception v0

    move-object v0, v1

    goto :goto_26

    :cond_2a
    move-object v0, v1

    goto :goto_26
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lcom/coremobility/integration/q;

    invoke-direct {v0, v4}, Lcom/coremobility/integration/q;-><init>(B)V

    invoke-static {p0, v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/q;)I

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x17

    const-string v1, "Unable to check Welcome text file availability, assume available"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    new-instance v0, Lcom/coremobility/integration/h;

    invoke-direct {v0}, Lcom/coremobility/integration/h;-><init>()V

    invoke-static {p0, v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v1, 0x31

    const-string v2, "Error creating welcome text file"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coremobility/integration/r;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3, v4, v2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    return-object v1
.end method

.method public static b(Lcom/coremobility/integration/p;)V
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/p;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/p;->b:[Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public static c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I
    .registers 9

    const/16 v5, 0x17

    const/16 v0, 0xe

    const/4 v1, 0x0

    iget v2, p2, Lcom/coremobility/integration/r;->a:I

    iput v1, p2, Lcom/coremobility/integration/r;->a:I

    iget-object v3, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_1b

    const-string v2, "Invalid hFile"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_14
    return v0

    :cond_15
    sub-int/2addr v2, v3

    :try_start_16
    iget v4, p2, Lcom/coremobility/integration/r;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/coremobility/integration/r;->a:I

    :cond_1b
    if-lez v2, :cond_40

    iget-object v3, p0, Lcom/coremobility/integration/h;->a:Ljava/io/RandomAccessFile;

    iget v4, p2, Lcom/coremobility/integration/r;->a:I

    invoke-virtual {v3, p1, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    iget v0, p2, Lcom/coremobility/integration/r;->a:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_30

    if-nez v0, :cond_2e

    const/4 v0, 0x6

    goto :goto_14

    :cond_2e
    move v0, v1

    goto :goto_14

    :catch_30
    move-exception v2

    const-string v3, "CM_File.ReadAll Ex: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v5, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_40
    move v0, v1

    goto :goto_14
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const-string v2, "-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    const/16 v1, 0x14

    if-le v3, v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_d

    move v1, v0

    :goto_1f
    if-ge v1, v3, :cond_2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2f
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I

    move-result v0

    return v0
.end method
