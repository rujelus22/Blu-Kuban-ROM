.class public LRz;
.super Ljava/lang/Object;
.source "TempFileStoreInstance.java"

# interfaces
.implements LRy;


# static fields
.field private static a:LRy;

.field private static final a:Ljava/util/Random;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, LRz;->a:LRy;

    .line 31
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, LRz;->a:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, LRz;->a:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public static a()LRy;
    .registers 1

    .prologue
    .line 49
    sget-object v0, LRz;->a:LRy;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    new-instance v0, LRz;

    invoke-direct {v0, p0}, LRz;-><init>(Landroid/content/Context;)V

    sput-object v0, LRz;->a:LRy;

    .line 42
    sget-object v0, LRz;->a:LRy;

    invoke-interface {v0}, LRy;->a()V

    .line 43
    return-void
.end method

.method private a(Ljava/io/File;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 168
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_23

    .line 171
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_2c
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_8 .. :try_end_f} :catch_1e

    move-result-object v2

    .line 172
    if-nez v2, :cond_16

    .line 179
    :try_start_12
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_23

    .line 186
    :goto_15
    return v0

    .line 175
    :cond_16
    :try_start_16
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_2c
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_16 .. :try_end_19} :catch_1e

    .line 179
    :try_start_19
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 186
    :goto_1c
    const/4 v0, 0x0

    goto :goto_15

    .line 176
    :catch_1e
    move-exception v2

    .line 179
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_15

    .line 181
    :catch_23
    move-exception v0

    .line 184
    const-string v0, "TempFileStoreInstance"

    const-string v1, "Error while testing file lock."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 179
    :catchall_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_23
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 127
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/io/File;)V
    .registers 6
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 135
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_1b

    aget-object v3, v1, v0

    .line 136
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, LRz;->c(Ljava/io/File;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 140
    :cond_1b
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 141
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, LRz;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 61
    if-nez v0, :cond_10

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot retrieve temporary directory."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_10
    const-string v1, "temp"

    const-string v2, "temp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 70
    iget-object v2, p0, LRz;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 80
    monitor-enter p0

    .line 81
    :try_start_9
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    :cond_16
    sget-object v4, LRz;->a:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 86
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, LRz;->a:Landroid/content/Context;

    const-string v4, "INITIAL_READABLE_DIRNAME"

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 95
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create unique directory to hold temporary file: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :catchall_60
    move-exception v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_9 .. :try_end_62} :catchall_60

    throw v0

    .line 99
    :cond_63
    :try_start_63
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c5

    move v2, v0

    :goto_6f
    invoke-static {v2}, LafQ;->a(Z)V

    .line 101
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c7

    :goto_7a
    invoke-static {v0}, LafQ;->a(Z)V

    .line 102
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, LRz;->a:Landroid/content/Context;

    const-string v2, "INITIAL_READABLE_FILENAME"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 106
    iget-object v1, p0, LRz;->a:Landroid/content/Context;

    const-string v2, "INITIAL_READABLE_FILENAME"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 110
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create world-readable temp file \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c5
    move v2, v1

    .line 100
    goto :goto_6f

    :cond_c7
    move v0, v1

    .line 101
    goto :goto_7a

    .line 114
    :cond_c9
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_63 .. :try_end_ca} :catchall_60

    return-object v0
.end method

.method public a()V
    .registers 6

    .prologue
    .line 145
    iget-object v0, p0, LRz;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 146
    if-nez v0, :cond_10

    .line 147
    const-string v0, "TempFileStoreInstance"

    const-string v1, "Cannot retrieve temporary directory"

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_f
    return-void

    .line 151
    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_f

    aget-object v3, v1, v0

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-direct {p0, v3}, LRz;->a(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 159
    :cond_26
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 151
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public a(Ljava/io/File;)V
    .registers 4
    .parameter

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, LRz;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LRz;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, LRz;->c(Ljava/io/File;)V

    .line 124
    return-void
.end method

.method public b(Ljava/io/File;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 192
    return-void
.end method
