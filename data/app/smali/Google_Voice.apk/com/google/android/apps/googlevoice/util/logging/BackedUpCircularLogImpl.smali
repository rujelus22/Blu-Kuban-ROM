.class public Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;
.super Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;
.source "BackedUpCircularLogImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;


# instance fields
.field private final backupFileName:Ljava/lang/String;

.field private final backupFrequency:I

.field private entriesSinceLastFlush:I

.field private final fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/FileFactory;IILjava/lang/String;)V
    .registers 7
    .parameter "clockUtils"
    .parameter "fileFactory"
    .parameter "maxEntries"
    .parameter "backupFrequency"
    .parameter "backupFileName"

    .prologue
    .line 27
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;-><init>(Lcom/google/android/apps/common/time/ClockUtils;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->entriesSinceLastFlush:I

    .line 28
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->backupFileName:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->backupFrequency:I

    .line 30
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

    .line 31
    return-void
.end method

.method private getOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .registers 6
    .parameter "fileName"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/FileFactory;->createFile(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;

    move-result-object v0

    .line 37
    .local v0, fileProxy:Lcom/google/android/apps/googlevoice/proxy/FileProxy;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 38
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->fileFactory:Lcom/google/android/apps/googlevoice/FileFactory;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/FileFactory;->createFile(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->mkdirs()Z

    .line 39
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->createNewFile()Z

    .line 41
    :cond_1c
    invoke-interface {v0, p2}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->getOutputStream(Z)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method private writeToFile(Ljava/io/OutputStream;Z)V
    .registers 6
    .parameter "outputStream"
    .parameter "append"

    .prologue
    .line 81
    if-eqz p2, :cond_15

    .line 82
    :try_start_2
    iget v1, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->entriesSinceLastFlush:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->getRecentContents(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 86
    :goto_11
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 92
    :goto_14
    return-void

    .line 84
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->getContents()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_3f

    goto :goto_11

    .line 87
    :catch_23
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackedUpCircularLog: Unexpected encoding exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_14

    .line 89
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3f
    move-exception v0

    .line 90
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackedUpCircularLog: Failed to write to checkin logs file."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_14
.end method


# virtual methods
.method protected declared-synchronized addEntryInternal(JLjava/lang/String;)V
    .registers 6
    .parameter "timestamp"
    .parameter "message"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->addEntryInternal(JLjava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->entriesSinceLastFlush:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->entriesSinceLastFlush:I

    .line 48
    iget v0, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->entriesSinceLastFlush:I

    iget v1, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->backupFrequency:I

    if-lt v0, v1, :cond_13

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->flush()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 51
    :cond_13
    monitor-exit p0

    return-void

    .line 46
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 58
    monitor-enter p0

    :try_start_2
    iget v3, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->entriesSinceLastFlush:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3a

    if-nez v3, :cond_8

    .line 77
    :goto_6
    monitor-exit p0

    return-void

    .line 67
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->isFull()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 68
    .local v0, append:Z
    :goto_e
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->backupFileName:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->getOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v2

    .line 69
    .local v2, outputStream:Ljava/io/OutputStream;
    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->writeToFile(Ljava/io/OutputStream;Z)V

    .line 70
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 71
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLogImpl;->entriesSinceLastFlush:I
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1d} :catch_3f

    goto :goto_6

    .line 72
    .end local v0           #append:Z
    .end local v2           #outputStream:Ljava/io/OutputStream;
    :catch_1e
    move-exception v1

    .line 73
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackedUpCircularLog: Failed to open checkin logs file. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_3a

    goto :goto_6

    .line 58
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_3a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 67
    :cond_3d
    const/4 v0, 0x1

    goto :goto_e

    .line 74
    :catch_3f
    move-exception v1

    .line 75
    .local v1, e:Ljava/io/IOException;
    :try_start_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackedUpCircularLog: Failed to close checkin logs file. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_3a

    goto :goto_6
.end method
