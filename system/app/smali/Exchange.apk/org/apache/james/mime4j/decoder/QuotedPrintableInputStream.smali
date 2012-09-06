.class public Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field private state:B

.field private stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "stream"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 42
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 43
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 46
    iput-object p1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    .line 47
    return-void
.end method

.method private asciiCharToNumericValue(B)B
    .registers 5
    .parameter "c"

    .prologue
    .line 213
    const/16 v0, 0x30

    if-lt p1, v0, :cond_c

    const/16 v0, 0x39

    if-gt p1, v0, :cond_c

    .line 214
    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    .line 218
    :goto_b
    return v0

    .line 215
    :cond_c
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1a

    .line 216
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_b

    .line 217
    :cond_1a
    const/16 v0, 0x61

    if-lt p1, v0, :cond_28

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_28

    .line 218
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_b

    .line 224
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    const/16 v9, 0xd

    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, msdChar:B
    :goto_a
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_25

    .line 120
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_26

    .line 121
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->populatePushbackQueue()V

    .line 122
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_26

    .line 205
    :cond_25
    return-void

    .line 126
    :cond_26
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    .line 128
    .local v0, b:B
    iget-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    packed-switch v4, :pswitch_data_15c

    .line 199
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 200
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 201
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_a

    .line 130
    :pswitch_53
    if-eq v0, v8, :cond_5b

    .line 131
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_a

    .line 134
    :cond_5b
    const/4 v4, 0x1

    iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto :goto_a

    .line 138
    :pswitch_5f
    if-ne v0, v9, :cond_65

    .line 139
    const/4 v4, 0x2

    iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto :goto_a

    .line 141
    :cond_65
    if-lt v0, v10, :cond_69

    if-le v0, v11, :cond_79

    :cond_69
    const/16 v4, 0x41

    if-lt v0, v4, :cond_71

    const/16 v4, 0x46

    if-le v0, v4, :cond_79

    :cond_71
    const/16 v4, 0x61

    if-lt v0, v4, :cond_7e

    const/16 v4, 0x66

    if-gt v0, v4, :cond_7e

    .line 142
    :cond_79
    const/4 v4, 0x3

    iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 143
    move v3, v0

    .line 144
    goto :goto_a

    .line 145
    :cond_7e
    if-ne v0, v8, :cond_96

    .line 150
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 151
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    const-string v5, "Malformed MIME; got =="

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 153
    :cond_8f
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_a

    .line 156
    :cond_96
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 157
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 160
    :cond_b6
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 161
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 162
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_a

    .line 166
    :pswitch_c4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_cc

    .line 167
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto/16 :goto_a

    .line 170
    :cond_cc
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 171
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected 10, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 174
    :cond_ec
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 175
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 176
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v9}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 177
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_a

    .line 181
    :pswitch_ff
    if-lt v0, v10, :cond_103

    if-le v0, v11, :cond_113

    :cond_103
    const/16 v4, 0x41

    if-lt v0, v4, :cond_10b

    const/16 v4, 0x46

    if-le v0, v4, :cond_113

    :cond_10b
    const/16 v4, 0x61

    if-lt v0, v4, :cond_128

    const/16 v4, 0x66

    if-gt v0, v4, :cond_128

    .line 182
    :cond_113
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v2

    .line 183
    .local v2, msd:B
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v1

    .line 184
    .local v1, low:B
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 185
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_a

    .line 188
    .end local v1           #low:B
    .end local v2           #msd:B
    :cond_128
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 189
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 192
    :cond_148
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 193
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 194
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 195
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_a

    .line 128
    nop

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_5f
        :pswitch_c4
        :pswitch_ff
    .end packed-switch
.end method

.method private populatePushbackQueue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-eqz v1, :cond_f

    .line 104
    :goto_8
    return-void

    .line 95
    .local v0, i:I
    :sswitch_9
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 87
    .end local v0           #i:I
    :cond_f
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 88
    .restart local v0       #i:I
    sparse-switch v0, :sswitch_data_32

    .line 103
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_8

    .line 91
    :sswitch_1f
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V

    goto :goto_8

    .line 99
    :sswitch_25
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V

    .line 100
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_8

    .line 88
    nop

    :sswitch_data_32
    .sparse-switch
        -0x1 -> :sswitch_1f
        0x9 -> :sswitch_9
        0xa -> :sswitch_25
        0xd -> :sswitch_25
        0x20 -> :sswitch_9
    .end sparse-switch
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
    .line 55
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 56
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->fillBuffer()V

    .line 60
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_d

    .line 61
    const/4 v0, -0x1

    .line 67
    :cond_c
    :goto_c
    return v0

    .line 63
    :cond_d
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    .line 64
    .local v0, val:B
    if-gez v0, :cond_c

    .line 67
    and-int/lit16 v0, v0, 0xff

    goto :goto_c
.end method
