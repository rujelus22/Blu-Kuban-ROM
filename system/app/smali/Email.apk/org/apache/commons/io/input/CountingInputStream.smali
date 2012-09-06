.class public Lorg/apache/commons/io/input/CountingInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    return-void
.end method


# virtual methods
.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    .line 89
    .local v0, found:I
    iget-wide v3, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_e

    const-wide/16 v1, 0x1

    :goto_a
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 90
    return v0

    .line 89
    :cond_e
    const-wide/16 v1, 0x0

    goto :goto_a
.end method

.method public read([B)I
    .registers 7
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v0

    .line 58
    .local v0, found:I
    iget-wide v3, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_d

    int-to-long v1, v0

    :goto_9
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 59
    return v0

    .line 58
    :cond_d
    const-wide/16 v1, 0x0

    goto :goto_9
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
    .line 74
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    .line 75
    .local v0, found:I
    iget-wide v3, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_d

    int-to-long v1, v0

    :goto_9
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 76
    return v0

    .line 75
    :cond_d
    const-wide/16 v1, 0x0

    goto :goto_9
.end method

.method public skip(J)J
    .registers 7
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide v0

    .line 104
    .local v0, skip:J
    iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 105
    return-wide v0
.end method
