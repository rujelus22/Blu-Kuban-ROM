.class public Landroid/support/place/utils/PacketReaderWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/io/InputStream;)[B
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 48
    new-array v2, v5, [B

    move v1, v0

    .line 49
    :goto_6
    if-ge v1, v5, :cond_12

    if-eq v1, v4, :cond_12

    .line 50
    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_6

    .line 53
    :cond_12
    if-ne v1, v4, :cond_1c

    .line 54
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream shut down."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1c
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 59
    new-array v2, v1, [B

    .line 62
    :goto_26
    if-le v1, v0, :cond_3a

    .line 63
    sub-int v3, v1, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 64
    if-ne v3, v4, :cond_38

    .line 65
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream shut down."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_38
    add-int/2addr v0, v3

    .line 68
    goto :goto_26

    .line 70
    :cond_3a
    if-eq v0, v1, :cond_5b

    .line 71
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes, but received only "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_5b
    return-object v2
.end method

.method public static write([BLjava/io/OutputStream;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    :goto_c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_c

    .line 32
    :cond_1a
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 33
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 34
    return-void
.end method
