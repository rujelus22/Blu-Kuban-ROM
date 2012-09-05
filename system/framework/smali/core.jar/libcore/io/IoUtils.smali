.class public final Llibcore/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static close(Ljava/io/FileDescriptor;)V
    .registers 3
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    if-eqz p0, :cond_d

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 38
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_d
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_d} :catch_e

    .line 43
    :cond_d
    return-void

    .line 40
    :catch_e
    move-exception v0

    .line 41
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static closeQuietly(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "fd"

    .prologue
    .line 64
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 67
    :goto_3
    return-void

    .line 65
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 3
    .parameter "closeable"

    .prologue
    .line 49
    if-eqz p0, :cond_5

    .line 51
    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 57
    :cond_5
    :goto_5
    return-void

    .line 52
    :catch_6
    move-exception v0

    .line 53
    .local v0, rethrown:Ljava/lang/RuntimeException;
    throw v0

    .line 54
    .end local v0           #rethrown:Ljava/lang/RuntimeException;
    :catch_8
    move-exception v1

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 73
    if-eqz p0, :cond_5

    .line 75
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 79
    :cond_5
    :goto_5
    return-void

    .line 76
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static deleteContents(Ljava/io/File;)V
    .registers 9
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 136
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_1f

    .line 137
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_1f
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_22
    if-ge v3, v4, :cond_51

    aget-object v1, v0, v3

    .line 140
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 141
    invoke-static {v1}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V

    .line 143
    :cond_2f
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 144
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to delete file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 147
    .end local v1           #file:Ljava/io/File;
    :cond_51
    return-void
.end method

.method public static readFileAsByteArray(Ljava/lang/String;)[B
    .registers 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsBytes(Ljava/lang/String;)Ljava/lang/UnsafeByteSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/UnsafeByteSequence;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static readFileAsBytes(Ljava/lang/String;)Ljava/lang/UnsafeByteSequence;
    .registers 8
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v3, 0x0

    .line 115
    .local v3, f:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2c

    .line 116
    .end local v3           #f:Ljava/io/RandomAccessFile;
    .local v4, f:Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v2, Ljava/lang/UnsafeByteSequence;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v2, v5}, Ljava/lang/UnsafeByteSequence;-><init>(I)V

    .line 117
    .local v2, bytes:Ljava/lang/UnsafeByteSequence;
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 119
    .local v0, buffer:[B
    :goto_16
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_26

    move-result v1

    .line 120
    .local v1, byteCount:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_21

    .line 126
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    .line 123
    :cond_21
    const/4 v5, 0x0

    :try_start_22
    invoke-virtual {v2, v0, v5, v1}, Ljava/lang/UnsafeByteSequence;->write([BII)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_16

    .line 126
    .end local v0           #buffer:[B
    .end local v1           #byteCount:I
    .end local v2           #bytes:Ljava/lang/UnsafeByteSequence;
    :catchall_26
    move-exception v5

    move-object v3, v4

    .end local v4           #f:Ljava/io/RandomAccessFile;
    .restart local v3       #f:Ljava/io/RandomAccessFile;
    :goto_28
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    :catchall_2c
    move-exception v5

    goto :goto_28
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsBytes(Ljava/lang/String;)Ljava/lang/UnsafeByteSequence;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/UnsafeByteSequence;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBlocking(Ljava/io/FileDescriptor;Z)V
    .registers 8
    .parameter "fd"
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->F_GETFL:I

    invoke-interface {v2, p0, v3}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    move-result v1

    .line 87
    .local v1, flags:I
    if-nez p1, :cond_16

    .line 88
    sget v2, Llibcore/io/OsConstants;->O_NONBLOCK:I

    or-int/2addr v1, v2

    .line 92
    :goto_d
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->F_SETFL:I

    int-to-long v4, v1

    invoke-interface {v2, p0, v3, v4, v5}, Llibcore/io/Os;->fcntlLong(Ljava/io/FileDescriptor;IJ)I

    .line 96
    return-void

    .line 90
    :cond_16
    sget v2, Llibcore/io/OsConstants;->O_NONBLOCK:I
    :try_end_18
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_18} :catch_1c

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    goto :goto_d

    .line 93
    .end local v1           #flags:I
    :catch_1c
    move-exception v0

    .line 94
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method
