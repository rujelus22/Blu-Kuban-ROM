.class public Lorg/columba/ristretto/imap/IMAPDownloadThread;
.super Ljava/lang/Object;
.source "IMAPDownloadThread.java"

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
    .line 64
    const-string v0, "org.columba.ristretto.imap.protocol"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->LOG:Ljava/util/logging/Logger;

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
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->buffer:[B

    .line 130
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    .line 131
    iput-object p2, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->source:Ljava/io/InputStream;

    .line 132
    iput p4, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->size:I

    .line 133
    iput-object p3, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->out:Ljava/io/OutputStream;

    .line 134
    iput-object p5, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    .line 135
    return-void
.end method

.method public static asyncDownload(Ljava/io/InputStream;ILorg/columba/ristretto/concurrency/Mutex;)Lorg/columba/ristretto/io/AsyncInputStream;
    .registers 14
    .parameter "input"
    .parameter "size"
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p1}, Lorg/columba/ristretto/io/TempSourceFactory;->useMemoryTemp(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 152
    new-instance v7, Lorg/columba/ristretto/io/MemBuffer;

    invoke-direct {v7, p1}, Lorg/columba/ristretto/io/MemBuffer;-><init>(I)V

    .line 154
    .local v7, literalBuffer:Lorg/columba/ristretto/io/MemBuffer;
    new-instance v8, Lorg/columba/ristretto/io/MemBufferInputStream;

    invoke-direct {v8, v7}, Lorg/columba/ristretto/io/MemBufferInputStream;-><init>(Lorg/columba/ristretto/io/MemBuffer;)V

    .line 155
    .local v8, literalSource:Ljava/io/InputStream;
    new-instance v3, Lorg/columba/ristretto/io/MemBufferOutputStream;

    invoke-direct {v3, v7}, Lorg/columba/ristretto/io/MemBufferOutputStream;-><init>(Lorg/columba/ristretto/io/MemBuffer;)V

    .line 177
    .end local v7           #literalBuffer:Lorg/columba/ristretto/io/MemBuffer;
    .local v3, out:Ljava/io/OutputStream;
    :goto_15
    new-instance v1, Lorg/columba/ristretto/io/AsyncInputStream;

    invoke-direct {v1, v8, p1}, Lorg/columba/ristretto/io/AsyncInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 179
    .local v1, asyncStream:Lorg/columba/ristretto/io/AsyncInputStream;
    new-instance v0, Lorg/columba/ristretto/imap/IMAPDownloadThread;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/columba/ristretto/imap/IMAPDownloadThread;-><init>(Lorg/columba/ristretto/io/AsyncInputStream;Ljava/io/InputStream;Ljava/io/OutputStream;ILorg/columba/ristretto/concurrency/Mutex;)V

    .line 181
    .local v0, thread:Lorg/columba/ristretto/imap/IMAPDownloadThread;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 183
    return-object v1

    .line 157
    .end local v0           #thread:Lorg/columba/ristretto/imap/IMAPDownloadThread;
    .end local v1           #asyncStream:Lorg/columba/ristretto/io/AsyncInputStream;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v8           #literalSource:Ljava/io/InputStream;
    :cond_2b
    invoke-static {}, Lorg/columba/ristretto/io/TempSourceFactory;->createTempFile()Ljava/io/File;

    move-result-object v9

    .line 160
    .local v9, tempFile:Ljava/io/File;
    const/16 v2, 0x2710

    new-array v10, v2, [B

    .line 161
    .local v10, zeros:[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 164
    .restart local v3       #out:Ljava/io/OutputStream;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_39
    if-ge v6, p1, :cond_41

    .line 165
    :try_start_3b
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    .line 164
    add-int/lit16 v6, v6, 0x2710

    goto :goto_39

    .line 167
    :cond_41
    const/4 v2, 0x0

    rem-int/lit16 v4, p1, 0x2710

    invoke-virtual {v3, v10, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_55

    .line 169
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 172
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 173
    .restart local v8       #literalSource:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3           #out:Ljava/io/OutputStream;
    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_15

    .line 169
    .end local v8           #literalSource:Ljava/io/InputStream;
    :catchall_55
    move-exception v2

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v2
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/16 v7, 0x400

    const/16 v13, 0xa

    const/4 v12, -0x1

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 87
    .local v4, startTime:J
    :goto_9
    :try_start_9
    iget v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->read:I

    iget v8, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->size:I

    if-ge v6, v8, :cond_47

    .line 88
    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->source:Ljava/io/InputStream;

    iget-object v9, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->buffer:[B

    const/4 v10, 0x0

    iget v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->size:I

    iget v11, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->read:I

    sub-int/2addr v6, v11

    if-ge v6, v7, :cond_53

    iget v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->size:I

    iget v11, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->read:I

    sub-int/2addr v6, v11

    :goto_20
    invoke-virtual {v8, v9, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 89
    .local v2, lastRead:I
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->out:Ljava/io/OutputStream;

    iget-object v8, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->buffer:[B

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    invoke-virtual {v6, v2}, Lorg/columba/ristretto/io/AsyncInputStream;->grow(I)V

    .line 91
    iget v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->read:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->read:I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_36} :catch_37

    goto :goto_9

    .line 93
    .end local v2           #lastRead:I
    :catch_37
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    invoke-virtual {v6, v0}, Lorg/columba/ristretto/io/AsyncInputStream;->exceptionOccured(Ljava/io/IOException;)V

    .line 96
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->partner:Lorg/columba/ristretto/io/AsyncInputStream;

    iget v7, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->size:I

    iget v8, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->read:I

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lorg/columba/ristretto/io/AsyncInputStream;->grow(I)V

    .line 101
    .end local v0           #e:Ljava/io/IOException;
    :cond_47
    const/4 v3, 0x0

    .line 102
    .local v3, rest:I
    :goto_48
    if-eq v3, v13, :cond_55

    if-eq v3, v12, :cond_55

    .line 103
    :try_start_4c
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->source:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_48

    .end local v3           #rest:I
    :cond_53
    move v6, v7

    .line 88
    goto :goto_20

    .line 107
    .restart local v3       #rest:I
    :cond_55
    const/4 v3, 0x0

    .line 108
    :goto_56
    if-eq v3, v13, :cond_6b

    if-eq v3, v12, :cond_6b

    .line 109
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->source:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5f} :catch_61

    move-result v3

    goto :goto_56

    .line 111
    :catch_61
    move-exception v1

    .line 112
    .local v1, e1:Ljava/io/IOException;
    sget-object v6, Lorg/columba/ristretto/imap/IMAPDownloadThread;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 115
    .end local v1           #e1:Ljava/io/IOException;
    :cond_6b
    sget-object v6, Lorg/columba/ristretto/imap/IMAPDownloadThread;->LOG:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Needed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ms for downloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->size:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 117
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    if-eqz v6, :cond_a3

    .line 118
    iget-object v6, p0, Lorg/columba/ristretto/imap/IMAPDownloadThread;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v6}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 120
    :cond_a3
    return-void
.end method
