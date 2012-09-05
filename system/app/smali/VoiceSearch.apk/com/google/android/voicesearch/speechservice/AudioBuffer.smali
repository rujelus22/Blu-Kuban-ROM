.class public Lcom/google/android/voicesearch/speechservice/AudioBuffer;
.super Ljava/lang/Object;
.source "AudioBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private mAudioException:Ljava/lang/Exception;

.field private final mAudioPacketSize:I

.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureThread:Ljava/lang/Thread;

.field private final mIn:Ljava/io/InputStream;

.field private volatile mStopRecording:Z

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private readPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(ILjava/io/InputStream;)V
    .registers 5
    .parameter "packetSize"
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 74
    iput v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    .line 82
    iput-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 95
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    .line 96
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    .line 97
    new-instance v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer$1;-><init>(Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    .line 103
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/speechservice/AudioBuffer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->captureLoop()V

    return-void
.end method

.method private addPacket(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "packet"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_5
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    .line 158
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 160
    return-void

    .line 158
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private captureLoop()V
    .registers 8

    .prologue
    .line 112
    :try_start_0
    iget v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    new-array v0, v4, [B

    .line 113
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 114
    .local v3, index:I
    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_4e

    iget-boolean v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    if-nez v4, :cond_4e

    .line 116
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    iget v5, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v0, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 118
    .local v1, bytesRead:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_3c

    .line 120
    if-lez v3, :cond_28

    .line 121
    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V

    .line 122
    const/4 v3, 0x0

    .line 125
    :cond_28
    sget-object v4, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_62

    .line 145
    :try_start_2d
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_33

    .line 150
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v3           #index:I
    :goto_32
    return-void

    .line 146
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #index:I
    :catch_33
    move-exception v2

    .line 147
    .local v2, e:Ljava/io/IOException;
    const-string v4, "AudioBuffer"

    const-string v5, "Closing input stream failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 128
    .end local v2           #e:Ljava/io/IOException;
    :cond_3c
    add-int/2addr v3, v1

    .line 129
    :try_start_3d
    iget v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    if-ne v3, v4, :cond_5

    .line 131
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V

    .line 132
    iget v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioPacketSize:I

    new-array v0, v4, [B

    .line 133
    const/4 v3, 0x0

    goto :goto_5

    .line 137
    .end local v1           #bytesRead:I
    :cond_4e
    sget-object v4, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->addPacket(Ljava/nio/ByteBuffer;)V
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_53} :catch_62

    .line 145
    :try_start_53
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_32

    .line 146
    :catch_59
    move-exception v2

    .line 147
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "AudioBuffer"

    const-string v5, "Closing input stream failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 138
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #index:I
    :catch_62
    move-exception v2

    .line 139
    .local v2, e:Ljava/lang/Exception;
    :try_start_63
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_72

    iget-boolean v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mStopRecording:Z

    if-nez v4, :cond_72

    .line 140
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->setAudioException(Ljava/lang/Exception;)V
    :try_end_72
    .catchall {:try_start_63 .. :try_end_72} :catchall_81

    .line 145
    :cond_72
    :try_start_72
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_77} :catch_78

    goto :goto_32

    .line 146
    :catch_78
    move-exception v2

    .line 147
    .local v2, e:Ljava/io/IOException;
    const-string v4, "AudioBuffer"

    const-string v5, "Closing input stream failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 143
    .end local v2           #e:Ljava/io/IOException;
    :catchall_81
    move-exception v4

    .line 145
    :try_start_82
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_87} :catch_88

    .line 148
    :goto_87
    throw v4

    .line 146
    :catch_88
    move-exception v2

    .line 147
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "AudioBuffer"

    const-string v6, "Closing input stream failed"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_87
.end method

.method private setAudioException(Ljava/lang/Exception;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 165
    :try_start_5
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    .line 166
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 168
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 170
    return-void

    .line 168
    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public getAudio()[B
    .registers 7

    .prologue
    .line 176
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 178
    :try_start_5
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_39

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_15

    .line 179
    const/4 v3, 0x0

    .line 187
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_14
    return-object v3

    .line 181
    :cond_15
    :try_start_15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 183
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_39

    goto :goto_20

    .line 187
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_39
    move-exception v3

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 185
    .restart local v1       #bout:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_39

    move-result-object v3

    .line 187
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_14
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 245
    :goto_5
    :try_start_5
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_20

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    if-nez v0, :cond_20

    .line 246
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    goto :goto_5

    .line 253
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 248
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    if-eqz v0, :cond_2e

    .line 249
    new-instance v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;

    const-string v1, "Audio capture threw exception"

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mAudioException:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 251
    :cond_2e
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mBuffer:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_19

    .line 253
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public restartBuffersToBackup()V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 229
    const/4 v0, 0x0

    :try_start_6
    iput v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->readPosition:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_e

    .line 231
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 233
    return-void

    .line 231
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 197
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 199
    :try_start_5
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->mCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_b

    .line 203
    :goto_a
    return-void

    .line 200
    :catch_b
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "AudioBuffer"

    const-string v2, "Interrupted in #stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method
