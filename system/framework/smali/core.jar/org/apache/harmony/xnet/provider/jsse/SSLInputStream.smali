.class public abstract Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;
.super Ljava/io/InputStream;
.source "SSLInputStream.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, i:I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    .local v1, read_b:I
    if-ne v1, v2, :cond_d

    .line 106
    if-nez v0, :cond_b

    .line 111
    :goto_a
    return v2

    :cond_b
    move v2, v0

    .line 106
    goto :goto_a

    .line 108
    :cond_d
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1c

    if-lt v0, p3, :cond_2

    :cond_1c
    move v2, v0

    .line 111
    goto :goto_a
.end method

.method public read(I)[B
    .registers 5
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    new-array v1, p1, [B

    .line 94
    .local v1, res:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, p1, :cond_f

    .line 95
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 97
    :cond_f
    return-object v1
.end method

.method public readUint16()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUint24()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUint32()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public readUint64()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint32()J

    move-result-wide v0

    .line 82
    .local v0, hi:J
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint32()J

    move-result-wide v2

    .line 83
    .local v2, lo:J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method public readUint8()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
