.class public Lorg/columba/ristretto/pop3/POP3DownloadThread;
.super Ljava/lang/Object;
.source "POP3DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private buffer:[B

.field private mutex:Lorg/columba/ristretto/concurrency/Mutex;

.field private out:Ljava/io/OutputStream;

.field private partner:Lorg/columba/ristretto/io/AsyncInputStream;

.field private read:I

.field private size:I

.field private source:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string v0, "org.columba.ristretto.pop3.protocol"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/columba/ristretto/io/AsyncInputStream;Ljava/io/InputStream;Ljava/io/OutputStream;ILorg/columba/ristretto/concurrency/Mutex;)V
    .registers 7
    .parameter "partner"
    .parameter "source"
    .parameter "out"
    .parameter "size"
    .parameter "mutex"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->buffer:[B

    .line 134
    iput-object p1, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    .line 135
    iput-object p2, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->source:Ljava/io/InputStream;

    .line 136
    iput p4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->size:I

    .line 137
    iput-object p3, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->out:Ljava/io/OutputStream;

    .line 138
    iput-object p5, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    .line 139
    return-void
.end method

.method public static asyncDownload(Ljava/io/InputStream;ILorg/columba/ristretto/concurrency/Mutex;)Lorg/columba/ristretto/io/AsyncInputStream;
    .registers 14
    .parameter "source"
    .parameter "size"
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p1}, Lorg/columba/ristretto/io/TempSourceFactory;->useMemoryTemp(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 156
    new-instance v7, Lorg/columba/ristretto/io/MemBuffer;

    invoke-direct {v7, p1}, Lorg/columba/ristretto/io/MemBuffer;-><init>(I)V

    .line 157
    .local v7, literalBuffer:Lorg/columba/ristretto/io/MemBuffer;
    new-instance v3, Lorg/columba/ristretto/io/MemBufferOutputStream;

    invoke-direct {v3, v7}, Lorg/columba/ristretto/io/MemBufferOutputStream;-><init>(Lorg/columba/ristretto/io/MemBuffer;)V

    .line 158
    .local v3, out:Ljava/io/OutputStream;
    new-instance v8, Lorg/columba/ristretto/io/MemBufferInputStream;

    invoke-direct {v8, v7}, Lorg/columba/ristretto/io/MemBufferInputStream;-><init>(Lorg/columba/ristretto/io/MemBuffer;)V

    .line 180
    .end local v7           #literalBuffer:Lorg/columba/ristretto/io/MemBuffer;
    .local v8, literalSource:Ljava/io/InputStream;
    :goto_15
    new-instance v1, Lorg/columba/ristretto/io/AsyncInputStream;

    invoke-direct {v1, v8, p1}, Lorg/columba/ristretto/io/AsyncInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 182
    .local v1, asyncStream:Lorg/columba/ristretto/io/AsyncInputStream;
    new-instance v0, Lorg/columba/ristretto/pop3/POP3DownloadThread;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/columba/ristretto/pop3/POP3DownloadThread;-><init>(Lorg/columba/ristretto/io/AsyncInputStream;Ljava/io/InputStream;Ljava/io/OutputStream;ILorg/columba/ristretto/concurrency/Mutex;)V

    .line 184
    .local v0, thread:Lorg/columba/ristretto/pop3/POP3DownloadThread;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 186
    return-object v1

    .line 160
    .end local v0           #thread:Lorg/columba/ristretto/pop3/POP3DownloadThread;
    .end local v1           #asyncStream:Lorg/columba/ristretto/io/AsyncInputStream;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v8           #literalSource:Ljava/io/InputStream;
    :cond_2b
    invoke-static {}, Lorg/columba/ristretto/io/TempSourceFactory;->createTempFile()Ljava/io/File;

    move-result-object v9

    .line 163
    .local v9, tempFile:Ljava/io/File;
    const/16 v2, 0x2710

    new-array v10, v2, [B

    .line 164
    .local v10, zeros:[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 167
    .restart local v3       #out:Ljava/io/OutputStream;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_39
    if-ge v6, p1, :cond_41

    .line 168
    :try_start_3b
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 167
    add-int/lit16 v6, v6, 0x2710

    goto :goto_39

    .line 170
    :cond_41
    const/4 v2, 0x0

    rem-int/lit16 v4, p1, 0x2710

    invoke-virtual {v3, v10, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_55

    .line 172
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 175
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 176
    .restart local v8       #literalSource:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3           #out:Ljava/io/OutputStream;
    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_15

    .line 172
    .end local v8           #literalSource:Ljava/io/InputStream;
    :catchall_55
    move-exception v2

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v2
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 87
    .local v2, startTime:J
    :try_start_4
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->source:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->buffer:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 88
    .local v1, lastRead:I
    :goto_c
    const/4 v4, -0x1

    if-eq v1, v4, :cond_76

    .line 90
    iget v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->read:I

    add-int/2addr v4, v1

    iget v5, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->size:I

    if-le v4, v5, :cond_4b

    .line 92
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    iget v5, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->read:I

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lorg/columba/ristretto/io/AsyncInputStream;->setSize(I)V

    .line 93
    sget-object v4, Lorg/columba/ristretto/pop3/POP3DownloadThread;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "message should be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " but is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->read:I

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 96
    :cond_4b
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->buffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 97
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    invoke-virtual {v4, v1}, Lorg/columba/ristretto/io/AsyncInputStream;->grow(I)V

    .line 98
    iget v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->read:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->read:I

    .line 100
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->source:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->buffer:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_64} :catch_66

    move-result v1

    goto :goto_c

    .line 102
    .end local v1           #lastRead:I
    :catch_66
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    invoke-virtual {v4, v0}, Lorg/columba/ristretto/io/AsyncInputStream;->exceptionOccured(Ljava/io/IOException;)V

    .line 105
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    iget v5, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->size:I

    iget v6, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->read:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/columba/ristretto/io/AsyncInputStream;->grow(I)V

    .line 109
    .end local v0           #e:Ljava/io/IOException;
    :cond_76
    iget v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->read:I

    iget v5, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->size:I

    if-ge v4, v5, :cond_b5

    .line 111
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    iget v5, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->read:I

    invoke-virtual {v4, v5}, Lorg/columba/ristretto/io/AsyncInputStream;->setSize(I)V

    .line 114
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/columba/ristretto/io/AsyncInputStream;->grow(I)V

    .line 116
    sget-object v4, Lorg/columba/ristretto/pop3/POP3DownloadThread;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "message should be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " but is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->read:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 119
    :cond_b5
    sget-object v4, Lorg/columba/ristretto/pop3/POP3DownloadThread;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Needed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ms for downloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 121
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    if-eqz v4, :cond_ed

    .line 122
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3DownloadThread;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v4}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 124
    :cond_ed
    return-void
.end method
