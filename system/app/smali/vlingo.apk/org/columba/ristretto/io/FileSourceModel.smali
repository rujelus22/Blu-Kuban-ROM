.class public Lorg/columba/ristretto/io/FileSourceModel;
.super Ljava/lang/Object;
.source "FileSourceModel.java"


# static fields
.field private static final BUFFERSIZE:I = 0xf000

.field private static final CLOSE_DELAY:J = 0x7d0L

.field private static timer:Ljava/util/Timer;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferStart:I

.field private channel:Ljava/nio/channels/FileChannel;

.field private closeTask:Lorg/columba/ristretto/io/CloseChannelTimerTask;

.field private file:Ljava/io/File;

.field private references:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lorg/columba/ristretto/io/FileSourceModel;->timer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/columba/ristretto/io/FileSourceModel;->file:Ljava/io/File;

    .line 81
    const v0, 0xf000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->buffer:Ljava/nio/ByteBuffer;

    .line 83
    iput v1, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    .line 84
    iput v1, p0, Lorg/columba/ristretto/io/FileSourceModel;->references:I

    .line 86
    invoke-direct {p0}, Lorg/columba/ristretto/io/FileSourceModel;->updateBufferFromFile()V

    .line 87
    return-void
.end method

.method private restartCloseTimer()V
    .registers 5

    .prologue
    .line 137
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->closeTask:Lorg/columba/ristretto/io/CloseChannelTimerTask;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->closeTask:Lorg/columba/ristretto/io/CloseChannelTimerTask;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/CloseChannelTimerTask;->cancel()Z

    .line 138
    :cond_9
    new-instance v0, Lorg/columba/ristretto/io/CloseChannelTimerTask;

    invoke-direct {v0, p0}, Lorg/columba/ristretto/io/CloseChannelTimerTask;-><init>(Lorg/columba/ristretto/io/FileSourceModel;)V

    iput-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->closeTask:Lorg/columba/ristretto/io/CloseChannelTimerTask;

    .line 139
    sget-object v0, Lorg/columba/ristretto/io/FileSourceModel;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/columba/ristretto/io/FileSourceModel;->closeTask:Lorg/columba/ristretto/io/CloseChannelTimerTask;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 140
    return-void
.end method

.method private updateBufferFromFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_13

    .line 125
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/columba/ristretto/io/FileSourceModel;->file:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->channel:Ljava/nio/channels/FileChannel;

    .line 128
    :cond_13
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 129
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->channel:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Lorg/columba/ristretto/io/FileSourceModel;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 133
    invoke-direct {p0}, Lorg/columba/ristretto/io/FileSourceModel;->restartCloseTimer()V

    .line 134
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->channel:Ljava/nio/channels/FileChannel;

    .line 188
    :cond_c
    return-void
.end method

.method public decReferences()V
    .registers 3

    .prologue
    .line 168
    iget v1, p0, Lorg/columba/ristretto/io/FileSourceModel;->references:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/columba/ristretto/io/FileSourceModel;->references:I

    .line 169
    iget v1, p0, Lorg/columba/ristretto/io/FileSourceModel;->references:I

    if-gtz v1, :cond_d

    .line 171
    :try_start_a
    invoke-virtual {p0}, Lorg/columba/ristretto/io/FileSourceModel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    .line 176
    :cond_d
    :goto_d
    return-void

    .line 172
    :catch_e
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d
.end method

.method public get(I)C
    .registers 6
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xf000

    .line 98
    iget v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    if-ge p1, v2, :cond_27

    .line 99
    :goto_7
    iget v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    if-ge p1, v2, :cond_12

    .line 100
    iget v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    add-int/lit16 v2, v2, -0x7800

    iput v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    goto :goto_7

    .line 103
    :cond_12
    invoke-direct {p0}, Lorg/columba/ristretto/io/FileSourceModel;->updateBufferFromFile()V

    .line 114
    :cond_15
    :goto_15
    iget-object v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 115
    .local v1, value:B
    and-int/lit16 v2, v1, 0x80

    and-int/lit8 v3, v1, 0x7f

    add-int v0, v2, v3

    .line 117
    .local v0, trueValue:I
    int-to-char v2, v0

    return v2

    .line 105
    .end local v0           #trueValue:I
    .end local v1           #value:B
    :cond_27
    iget v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_15

    .line 106
    :goto_2c
    iget v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_38

    .line 107
    iget v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    add-int/lit16 v2, v2, 0x7800

    iput v2, p0, Lorg/columba/ristretto/io/FileSourceModel;->bufferStart:I

    goto :goto_2c

    .line 109
    :cond_38
    invoke-direct {p0}, Lorg/columba/ristretto/io/FileSourceModel;->updateBufferFromFile()V

    goto :goto_15
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->file:Ljava/io/File;

    return-object v0
.end method

.method public incReferences()V
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->references:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->references:I

    .line 159
    return-void
.end method

.method public length()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSourceModel;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
