.class public final Lorg/acra/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lorg/acra/c/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 31
    const-class v1, Lorg/acra/c/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/acra/c/e;->a:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ACRA-INSTALLATION"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_45

    .line 34
    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 35
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_3e

    :try_start_1d
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_39

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 36
    :cond_2f
    invoke-static {v0}, Lorg/acra/c/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/c/e;->a:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_3e

    .line 41
    :cond_35
    :try_start_35
    sget-object v0, Lorg/acra/c/e;->a:Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_45

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 37
    :catch_3e
    move-exception v0

    .line 38
    :try_start_3f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_45

    .line 31
    :catchall_45
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 45
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 48
    :try_start_e
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1a

    .line 50
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 50
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw v1
.end method
