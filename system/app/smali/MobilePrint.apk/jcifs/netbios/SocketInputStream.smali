.class Ljcifs/netbios/SocketInputStream;
.super Ljava/io/InputStream;
.source "SocketInputStream.java"


# static fields
.field private static final TMP_BUFFER_SIZE:I = 0x100


# instance fields
.field private bip:I

.field private header:[B

.field private in:Ljava/io/InputStream;

.field private n:I

.field private ssp:Ljcifs/netbios/SessionServicePacket;

.field private tmp:[B

.field private tot:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    .line 36
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    .line 37
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
    .line 103
    iget v0, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    if-lez v0, :cond_7

    .line 104
    iget v0, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    .line 106
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_6
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 110
    return-void
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/netbios/SocketInputStream;->read([BII)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_16

    move-result v0

    if-gez v0, :cond_e

    .line 41
    const/4 v0, -0x1

    .line 43
    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_16

    and-int/lit16 v0, v0, 0xff

    goto :goto_c

    .line 40
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/netbios/SocketInputStream;->read([BII)I
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 54
    monitor-enter p0

    if-nez p3, :cond_8

    move v0, v1

    .line 84
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 57
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    iput v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    .line 60
    :cond_b
    :goto_b
    :sswitch_b
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    if-gtz v1, :cond_23

    .line 74
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I

    move-result v1

    sparse-switch v1, :sswitch_data_62

    goto :goto_b

    .line 81
    :sswitch_1c
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    if-lez v1, :cond_6

    .line 82
    iget v0, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    goto :goto_6

    .line 61
    :cond_23
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    .line 62
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    if-ne v1, v0, :cond_3c

    .line 63
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    if-lez v1, :cond_6

    iget v0, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    goto :goto_6

    .line 65
    :cond_3c
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    iget v2, p0, Ljcifs/netbios/SocketInputStream;->n:I

    add-int/2addr v1, v2

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    .line 66
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    add-int/2addr p2, v1

    .line 67
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    sub-int/2addr p3, v1

    .line 68
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    iget v2, p0, Ljcifs/netbios/SocketInputStream;->n:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    .line 69
    if-nez p3, :cond_b

    .line 70
    iget v0, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    goto :goto_6

    .line 78
    :sswitch_55
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljcifs/netbios/SessionServicePacket;->readLength([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I
    :try_end_5e
    .catchall {:try_start_9 .. :try_end_5e} :catchall_5f

    goto :goto_b

    .line 54
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :sswitch_data_62
    .sparse-switch
        -0x1 -> :sswitch_1c
        0x0 -> :sswitch_55
        0x85 -> :sswitch_b
    .end sparse-switch
.end method

.method public declared-synchronized skip(J)J
    .registers 12
    .parameter "numbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 89
    monitor-enter p0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_9

    .line 100
    :goto_7
    monitor-exit p0

    return-wide v3

    .line 92
    :cond_9
    move-wide v0, p1

    .line 93
    .local v0, n:J
    :goto_a
    cmp-long v5, v0, v3

    if-gtz v5, :cond_11

    .line 100
    :cond_e
    sub-long v3, p1, v0

    goto :goto_7

    .line 94
    :cond_11
    :try_start_11
    iget-object v5, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v6, 0x0

    const-wide/16 v7, 0x100

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljcifs/netbios/SocketInputStream;->read([BII)I
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_24

    move-result v2

    .line 95
    .local v2, r:I
    if-ltz v2, :cond_e

    .line 98
    int-to-long v5, v2

    sub-long/2addr v0, v5

    goto :goto_a

    .line 89
    .end local v2           #r:I
    :catchall_24
    move-exception v3

    monitor-exit p0

    throw v3
.end method
