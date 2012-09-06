.class public Lcom/android/exchange/adapter/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# instance fields
.field private mDepth:I

.field private mLogging:Z

.field private mNameStack:[Ljava/lang/String;

.field private final mOutput:Ljava/io/OutputStream;

.field private mPendingTag:I

.field private mTagPage:I


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 6
    .parameter "outputStream"
    .parameter "startDocument"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->mPendingTag:I

    .line 46
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mNameStack:[Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/android/exchange/adapter/Serializer;->mTagPage:I

    .line 48
    const-string v0, "Serializer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->mLogging:Z

    .line 72
    iput-object p1, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    .line 73
    if-eqz p2, :cond_20

    .line 74
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->startDocument()V

    .line 78
    :goto_1f
    return-void

    .line 76
    :cond_20
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1f
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "startDocument"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public checkPendingTag(Z)V
    .registers 8
    .parameter "degenerated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 106
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->mPendingTag:I

    if-ne v3, v5, :cond_6

    .line 124
    :goto_5
    return-void

    .line 109
    :cond_6
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->mPendingTag:I

    shr-int/lit8 v1, v3, 0x6

    .line 110
    .local v1, page:I
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->mPendingTag:I

    and-int/lit8 v2, v3, 0x3f

    .line 111
    .local v2, tag:I
    iget v3, p0, Lcom/android/exchange/adapter/Serializer;->mTagPage:I

    if-eq v1, v3, :cond_1f

    .line 112
    iput v1, p0, Lcom/android/exchange/adapter/Serializer;->mTagPage:I

    .line 113
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 114
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 117
    :cond_1f
    iget-object v4, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    if-eqz p1, :cond_58

    move v3, v2

    :goto_24
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 118
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v3, :cond_55

    .line 119
    sget-object v3, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    aget-object v3, v3, v1

    add-int/lit8 v4, v2, -0x5

    aget-object v0, v3, v4

    .line 120
    .local v0, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exchange/adapter/Serializer;->mNameStack:[Ljava/lang/String;

    iget v4, p0, Lcom/android/exchange/adapter/Serializer;->mDepth:I

    aput-object v0, v3, v4

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 123
    .end local v0           #name:Ljava/lang/String;
    :cond_55
    iput v5, p0, Lcom/android/exchange/adapter/Serializer;->mPendingTag:I

    goto :goto_5

    .line 117
    :cond_58
    or-int/lit8 v3, v2, 0x40

    goto :goto_24
.end method

.method public data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    .registers 6
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p2, :cond_1a

    .line 154
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null data for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 157
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 158
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 159
    return-object p0
.end method

.method public done()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->mDepth:I

    if-eqz v0, :cond_c

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Done received with unclosed tags"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_c
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 96
    return-void
.end method

.method public end()Lcom/android/exchange/adapter/Serializer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 134
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->mPendingTag:I

    if-ltz v0, :cond_f

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 142
    :cond_8
    :goto_8
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->mDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->mDepth:I

    .line 143
    return-object p0

    .line 137
    :cond_f
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 138
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v0, :cond_8

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/Serializer;->mNameStack:[Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/adapter/Serializer;->mDepth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    goto :goto_8
.end method

.method log(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 81
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 82
    .local v0, cr:I
    if-lez v0, :cond_d

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_d
    const-string v1, "Serializer"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1b

    .line 87
    const-string v1, "Serializer"

    invoke-static {v1, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1b
    return-void
.end method

.method public opaque(Ljava/io/InputStream;I)Lcom/android/exchange/adapter/Serializer;
    .registers 9
    .parameter "is"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x4000

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/16 v3, 0xc3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 178
    iget-object v2, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0, v2, p2}, Lcom/android/exchange/adapter/Serializer;->writeInteger(Ljava/io/OutputStream;I)V

    .line 179
    iget-boolean v2, p0, Lcom/android/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v2, :cond_2c

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opaque, length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 183
    :cond_2c
    new-array v0, v5, [B

    .line 184
    .local v0, buffer:[B
    :goto_2e
    if-lez p2, :cond_3b

    .line 185
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 186
    .local v1, bytesRead:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    .line 192
    .end local v1           #bytesRead:I
    :cond_3b
    return-object p0

    .line 189
    .restart local v1       #bytesRead:I
    :cond_3c
    iget-object v2, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 190
    sub-int/2addr p2, v1

    .line 191
    goto :goto_2e
.end method

.method public start(I)Lcom/android/exchange/adapter/Serializer;
    .registers 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 128
    iput p1, p0, Lcom/android/exchange/adapter/Serializer;->mPendingTag:I

    .line 129
    iget v0, p0, Lcom/android/exchange/adapter/Serializer;->mDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/Serializer;->mDepth:I

    .line 130
    return-object p0
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 100
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 101
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 102
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 103
    return-void
.end method

.method public tag(I)Lcom/android/exchange/adapter/Serializer;
    .registers 2
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 148
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 149
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    .registers 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_1c

    .line 164
    const-string v0, "Serializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing null text for pending tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/Serializer;->mPendingTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 168
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0, v0, p1}, Lcom/android/exchange/adapter/Serializer;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v0, :cond_32

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 172
    :cond_32
    return-object p0
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_f

    .line 238
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 240
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_f

    .line 231
    iget-object v0, p0, Lcom/android/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method writeInteger(Ljava/io/OutputStream;I)V
    .registers 7
    .parameter "out"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 197
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 200
    .local v1, idx:I
    :goto_4
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    and-int/lit8 v3, p2, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 201
    shr-int/lit8 p2, p2, 0x7

    .line 202
    if-nez p2, :cond_2f

    move v1, v2

    .line 204
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_10
    const/4 v3, 0x1

    if-le v1, v3, :cond_1d

    .line 205
    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_10

    .line 207
    :cond_1d
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 208
    iget-boolean v3, p0, Lcom/android/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v3, :cond_2e

    .line 209
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 211
    :cond_2e
    return-void

    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_2f
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_4
.end method

.method writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 215
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 217
    return-void
.end method

.method writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V
    .registers 6
    .parameter "cv"
    .parameter "key"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 222
    invoke-virtual {p0, p3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 226
    :goto_f
    return-void

    .line 224
    :cond_10
    invoke-virtual {p0, p3}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    goto :goto_f
.end method
