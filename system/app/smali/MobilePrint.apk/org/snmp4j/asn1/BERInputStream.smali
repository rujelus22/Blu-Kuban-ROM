.class public Lorg/snmp4j/asn1/BERInputStream;
.super Ljava/io/InputStream;
.source "BERInputStream.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 44
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public getAvailableBytes()I
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPosition()J
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isMarked()Z
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_5} :catch_9

    move-result v1

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 58
    :catch_9
    move-exception v0

    .line 59
    .local v0, ex:Ljava/nio/BufferUnderflowException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected end of input stream at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([B)I
    .registers 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_a

    .line 118
    const/4 v0, -0x1

    .line 122
    :goto_9
    return v0

    .line 120
    :cond_a
    iget-object v1, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 121
    .local v0, read:I
    iget-object v1, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_9
.end method

.method public read([BII)I
    .registers 7
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v1, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_a

    .line 139
    const/4 v0, -0x1

    .line 143
    :goto_9
    return v0

    .line 141
    :cond_a
    iget-object v1, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 142
    .local v0, read:I
    iget-object v1, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_9
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 155
    monitor-exit p0

    return-void

    .line 154
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2
    .parameter "buf"

    .prologue
    .line 51
    iput-object p1, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 52
    return-void
.end method

.method public skip(J)J
    .registers 8
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v2, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 166
    .local v0, skipped:J
    iget-object v2, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/snmp4j/asn1/BERInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v0

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    return-wide v0
.end method
